.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 1380
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1381
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1384
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1385
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1387
    const-string v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1389
    const-string v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1391
    const-string v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1393
    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1396
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 1397
    return-void
.end method

.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1400
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v5, v4, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1401
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1402
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v4, "screen_buttons_state"

    const/4 v7, 0x0

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    .line 1405
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v4, "trackball_wake_screen"

    const/4 v7, 0x0

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    :goto_1
    iput-boolean v4, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1407
    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const-string v4, "volumekey_wake_screen"

    const/4 v7, 0x0

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_2
    iput-boolean v4, v6, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 1410
    const-string v4, "camera_key_preferred_action_type"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1413
    .local v0, "cameraKeyActionType":I
    if-ne v2, v0, :cond_4

    .line 1414
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v6, 0x4

    const-string v7, "camera_key_preferred_action_shortcut_id"

    const/4 v8, -0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_3

    :goto_3
    iput-boolean v2, v4, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1423
    :goto_4
    monitor-exit v5

    .line 1424
    return-void

    .end local v0    # "cameraKeyActionType":I
    :cond_0
    move v4, v3

    .line 1402
    goto :goto_0

    :cond_1
    move v4, v3

    .line 1405
    goto :goto_1

    :cond_2
    move v4, v3

    .line 1407
    goto :goto_2

    .restart local v0    # "cameraKeyActionType":I
    :cond_3
    move v2, v3

    .line 1414
    goto :goto_3

    .line 1421
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto :goto_4

    .line 1423
    .end local v0    # "cameraKeyActionType":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
