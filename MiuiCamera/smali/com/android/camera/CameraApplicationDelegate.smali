.class public Lcom/android/camera/CameraApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "CameraApplicationDelegate.java"


# static fields
.field private static appChannel:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "2882303761517373386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    .line 18
    const-string v0, "5641737344386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    .line 19
    const-string v0, "XiaoMi"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 1
    .param p1, "cameraAppImpl"    # Lcom/android/camera/CameraAppImpl;

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 23
    sput-object p1, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    .line 24
    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    monitor-enter p0

    if-nez p1, :cond_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 4
    .param p1, "current"    # Landroid/app/Activity;

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x0

    .line 76
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 77
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object v0

    .line 79
    if-eq v0, p1, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    iget-object v3, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_1
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getActivity(I)Landroid/app/Activity;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityCount()I
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSettingsFlag()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 29
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x5

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 34
    return-void
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    monitor-enter p0

    if-nez p1, :cond_0

    .line 72
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetRestoreFlag()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 50
    return-void
.end method
