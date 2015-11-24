.class Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Memory.java"


# instance fields
.field private final RN:Lcom/android/settings_ext/deviceinfo/Memory;

.field private RO:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/deviceinfo/Memory;I)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;->RN:Lcom/android/settings_ext/deviceinfo/Memory;

    .line 471
    iput p2, p0, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;->RO:I

    .line 472
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 476
    monitor-enter p0

    .line 477
    :try_start_0
    iget v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;->RO:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;->RO:I

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory$ClearCacheObserver;->RN:Lcom/android/settings_ext/deviceinfo/Memory;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Memory;->d(Lcom/android/settings_ext/deviceinfo/Memory;)V

    .line 480
    :cond_0
    monitor-exit p0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
