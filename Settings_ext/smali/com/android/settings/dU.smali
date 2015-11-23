.class Lcom/android/settings/dU;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic qt:Lcom/android/settings/dS;

.field private qu:I


# direct methods
.method constructor <init>(Lcom/android/settings/dS;I)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/dU;->qt:Lcom/android/settings/dS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput p2, p0, Lcom/android/settings/dU;->qu:I

    .line 453
    return-void
.end method


# virtual methods
.method public declared-synchronized eS()V
    .locals 2

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/dU;->qu:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :goto_0
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
