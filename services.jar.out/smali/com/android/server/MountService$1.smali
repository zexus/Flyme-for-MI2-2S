.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 664
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 665
    .local v5, "userId":I
    if-ne v5, v8, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 668
    .local v4, "user":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 670
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 671
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 672
    .local v1, "emulated":Z
    const-string v7, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent.ACTION_USER_ADDED,emulated="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v1, :cond_2

    .line 674
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    invoke-static {v7, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Landroid/os/UserHandle;)V

    .line 676
    :cond_2
    monitor-exit v8

    goto :goto_0

    .end local v1    # "emulated":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 678
    :cond_3
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 679
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 680
    :try_start_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 681
    .local v3, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 682
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 683
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 689
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 686
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :cond_5
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 687
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v7, v6}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    goto :goto_2

    .line 689
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0
.end method
