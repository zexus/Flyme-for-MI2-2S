.class Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# instance fields
.field final synthetic Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 14

    .prologue
    .line 975
    const/4 v1, 0x0

    .line 976
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settings_ext/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v2

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 979
    if-eqz v0, :cond_2

    .line 980
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 981
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->EZ:Z

    .line 982
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->Fa:J

    .line 983
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v4, v6

    .line 985
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    .line 987
    add-long v8, v4, v6

    iget-object v3, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-static {v3, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 989
    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v3, v10, v8

    if-nez v3, :cond_0

    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_0

    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_0

    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_0

    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v3, v10, v4

    if-nez v3, :cond_0

    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v3, v10, v6

    if-nez v3, :cond_0

    iget-wide v10, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    .line 996
    :cond_0
    iput-wide v8, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    .line 997
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v8, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->cacheSize:J

    .line 998
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v8, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 999
    iget-wide v8, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v8, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1000
    iput-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    .line 1001
    iput-wide v6, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    .line 1002
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    .line 1003
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v1, v4, v5}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->EW:Ljava/lang/String;

    .line 1004
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->ET:J

    .line 1005
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->ET:J

    invoke-static {v1, v4, v5}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->EX:Ljava/lang/String;

    .line 1006
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->b(Lcom/android/settings_ext/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->EU:J

    .line 1007
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-wide v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->EU:J

    invoke-static {v1, v4, v5}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->EY:Ljava/lang/String;

    .line 1010
    const/4 v1, 0x1

    .line 1012
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    if-eqz v1, :cond_2

    .line 1014
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState;->EM:Lcom/android/settings_ext/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x4

    iget-object v3, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ext/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1016
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState;->EM:Lcom/android/settings_ext/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState;->EJ:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState;->EJ:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings_ext/applications/ApplicationsState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ext/applications/ApplicationsState;->EJ:Ljava/lang/String;

    .line 1022
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler$1;->Fe:Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 1025
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1026
    return-void

    .line 1012
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1025
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
