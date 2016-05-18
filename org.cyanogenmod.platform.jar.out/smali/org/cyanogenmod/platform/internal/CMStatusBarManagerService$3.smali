.class Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;
.super Ljava/lang/Object;
.source "CMStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeCustomTileWithTagInternal(IILjava/lang/String;Ljava/lang/String;IILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

.field final synthetic val$id:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$tag:Ljava/lang/String;

    iput p4, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$id:I

    iput p5, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 334
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    iget-object v3, v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 335
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$tag:Ljava/lang/String;

    iget v6, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$id:I

    iget v7, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->val$userId:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->indexOfQsTileLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 336
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 337
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    iget-object v2, v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;

    .line 338
    .local v1, "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    iget-object v2, v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    .line 341
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileListeners:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->access$300(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    move-result-object v2

    iget-object v4, v1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v2, v4}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lcyanogenmod/app/StatusBarPanelCustomTile;)V

    .line 342
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    iget-object v2, v2, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    iget-object v4, v1, Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lcyanogenmod/app/StatusBarPanelCustomTile;

    invoke-virtual {v4}, Lcyanogenmod/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .end local v1    # "r":Lorg/cyanogenmod/internal/statusbar/ExternalQuickSettingsRecord;
    :cond_0
    monitor-exit v3

    .line 345
    return-void

    .line 344
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
