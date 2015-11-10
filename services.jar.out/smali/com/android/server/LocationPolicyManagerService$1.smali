.class Lcom/android/server/LocationPolicyManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/LocationPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 276
    .local v0, "pidState":Landroid/util/SparseIntArray;
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 278
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/LocationPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # invokes: Lcom/android/server/LocationPolicyManagerService;->computeUidStateLocked(I)V
    invoke-static {v1, p2}, Lcom/android/server/LocationPolicyManagerService;->access$100(Lcom/android/server/LocationPolicyManagerService;I)V

    .line 283
    :cond_1
    monitor-exit v2

    .line 284
    return-void

    .line 283
    .end local v0    # "pidState":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProcessStateChanged(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 256
    const-string v1, "LocationPolicy"

    const-string v2, "onProcessStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/LocationPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 263
    .local v0, "pidState":Landroid/util/SparseIntArray;
    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "pidState":Landroid/util/SparseIntArray;
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 265
    .restart local v0    # "pidState":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/LocationPolicyManagerService;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$1;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # invokes: Lcom/android/server/LocationPolicyManagerService;->computeUidStateLocked(I)V
    invoke-static {v1, p2}, Lcom/android/server/LocationPolicyManagerService;->access$100(Lcom/android/server/LocationPolicyManagerService;I)V

    .line 269
    monitor-exit v2

    .line 270
    return-void

    .line 269
    .end local v0    # "pidState":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
