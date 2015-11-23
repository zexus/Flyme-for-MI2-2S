.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# instance fields
.field final Fc:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic Fd:Lcom/android/settings/applications/ApplicationsState;

.field mRunning:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    .line 1030
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 973
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fc:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 1031
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x0

    .line 1036
    const/4 v0, 0x0

    .line 1037
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 1038
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->ED:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->ED:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1040
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->ED:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v3, v0

    .line 1042
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    if-eqz v3, :cond_0

    move v1, v2

    .line 1044
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1045
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->iZ()V

    .line 1044
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1042
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1049
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1152
    :goto_2
    :pswitch_0
    return-void

    .line 1054
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v3

    move v1, v2

    .line 1056
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    if-ge v1, v6, :cond_3

    .line 1057
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_1

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1059
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1061
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1064
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1065
    add-int/lit8 v1, v1, 0x1

    .line 1066
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v0}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    :cond_2
    move v0, v1

    .line 1056
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    .line 1070
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1072
    if-lt v1, v6, :cond_4

    .line 1073
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1070
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1075
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1110
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1114
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 1116
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EJ:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1118
    monitor-exit v1

    goto :goto_2

    .line 1149
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1121
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1122
    :goto_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 1123
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1124
    iget-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->EZ:Z

    if-eqz v3, :cond_a

    .line 1125
    :cond_6
    iget-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->Fa:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    iget-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->Fa:J

    const-wide/16 v6, 0x4e20

    sub-long v6, v4, v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_9

    .line 1127
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v2, :cond_8

    .line 1128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1129
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1131
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    :cond_8
    iput-wide v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->Fa:J

    .line 1134
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/settings/applications/ApplicationsState;->EJ:Ljava/lang/String;

    .line 1135
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->EJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fc:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1138
    :cond_9
    monitor-exit v1

    goto/16 :goto_2

    .line 1122
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1141
    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1142
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1144
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1146
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1149
    :cond_c
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_2

    :cond_d
    move-object v3, v0

    goto/16 :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
