.class public Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
.super Lorg/cyanogenmod/platform/internal/ManagedServices;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTileListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 4

    .prologue
    .line 374
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    .line 375
    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$600(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$700(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mUserProfiles:Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;
    invoke-static {p1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$800(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/cyanogenmod/platform/internal/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lorg/cyanogenmod/platform/internal/ManagedServices$UserProfiles;)V

    .line 376
    return-void
.end method

.method static synthetic access$1000(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    .param p1, "x1"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemoved(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    .param p1, "x1"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPosted(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method private notifyPosted(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 6
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 477
    iget-object v1, p1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcyanogenmod/app/ICustomTileListener;

    .line 478
    .local v1, "listener":Lcyanogenmod/app/ICustomTileListener;
    new-instance v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 480
    .local v2, "sbcHolder":Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;
    :try_start_0
    invoke-interface {v1, v2}, Lcyanogenmod/app/ICustomTileListener;->onCustomTilePosted(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyRemoved(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 6
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 487
    invoke-virtual {p2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v1, p1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcyanogenmod/app/ICustomTileListener;

    .line 491
    .local v1, "listener":Lcyanogenmod/app/ICustomTileListener;
    new-instance v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 493
    .local v2, "sbcHolder":Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;
    :try_start_0
    invoke-interface {v1, v2}, Lcyanogenmod/app/ICustomTileListener;->onCustomTileRemoved(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 395
    invoke-static {p1}, Lcyanogenmod/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;

    invoke-direct {v0}, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;-><init>()V

    .line 381
    .local v0, "c":Lorg/cyanogenmod/platform/internal/ManagedServices$Config;
    const-string v1, "custom tile listener"

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 382
    const-string v1, "cyanogenmod.app.CustomTileListenerService"

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 385
    const-string v1, "cyanogenmod.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    iput-object v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 389
    const v1, 0x3f040005

    iput v1, v0, Lorg/cyanogenmod/platform/internal/ManagedServices$Config;->clientLabel:I

    .line 390
    return-object v0
.end method

.method public notifyPostedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 9
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;
    .param p2, "oldSbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 423
    const/4 v4, 0x0

    .line 425
    .local v4, "sbcClone":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 426
    .local v1, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v7, p1, v1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$900(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    .line 427
    .local v6, "sbnVisible":Z
    if-eqz p2, :cond_2

    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v7, p2, v1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$900(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    .line 429
    .local v3, "oldSbnVisible":Z
    :goto_1
    if-nez v3, :cond_1

    if-eqz v6, :cond_0

    .line 434
    :cond_1
    if-eqz v3, :cond_3

    if-nez v6, :cond_3

    .line 435
    invoke-virtual {p2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v2

    .line 436
    .local v2, "oldSbcClone":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$700(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;

    invoke-direct {v8, p0, v1, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 427
    .end local v2    # "oldSbcClone":Lcyanogenmod/app/StatusBarPanelCustomTile;
    .end local v3    # "oldSbnVisible":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 444
    .restart local v3    # "oldSbnVisible":Z
    :cond_3
    invoke-virtual {p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v4

    .line 446
    move-object v5, v4

    .line 447
    .local v5, "sbcToPost":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$700(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;

    invoke-direct {v8, p0, v1, v5}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 454
    .end local v1    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    .end local v3    # "oldSbnVisible":Z
    .end local v5    # "sbcToPost":Lcyanogenmod/app/StatusBarPanelCustomTile;
    .end local v6    # "sbnVisible":Z
    :cond_4
    return-void
.end method

.method public notifyRemovedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    .locals 5
    .param p1, "sbc"    # Lcyanogenmod/app/StatusBarPanelCustomTile;

    .prologue
    .line 461
    invoke-virtual {p1}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v2

    .line 462
    .local v2, "sbcClone":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 463
    .local v1, "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->isVisibleToListener(Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v3, v2, v1}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$900(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Lcyanogenmod/app/StatusBarPanelCustomTile;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$700(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$3;

    invoke-direct {v4, p0, v1, v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners$3;-><init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 473
    .end local v1    # "info":Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public onServiceAdded(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 2
    .param p1, "info"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 400
    iget-object v0, p1, Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Lcyanogenmod/app/ICustomTileListener;

    .line 402
    .local v0, "listener":Lcyanogenmod/app/ICustomTileListener;
    :try_start_0
    invoke-interface {v0}, Lcyanogenmod/app/ICustomTileListener;->onListenerConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "removed"    # Lorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 410
    return-void
.end method
