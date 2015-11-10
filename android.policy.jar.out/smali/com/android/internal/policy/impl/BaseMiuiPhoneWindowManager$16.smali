.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->triggerSnapService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1722
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    if-eq v0, p0, :cond_0

    .line 1723
    monitor-exit v1

    .line 1728
    :goto_0
    return-void

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapMessager:Landroid/os/Messenger;

    .line 1727
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapMessager:Landroid/os/Messenger;

    .line 1732
    return-void
.end method
