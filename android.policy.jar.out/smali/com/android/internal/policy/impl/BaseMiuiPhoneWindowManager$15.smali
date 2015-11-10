.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
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
    .line 1673
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1678
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1680
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 1686
    return-void

    .line 1685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1682
    :catch_0
    move-exception v0

    goto :goto_0
.end method
