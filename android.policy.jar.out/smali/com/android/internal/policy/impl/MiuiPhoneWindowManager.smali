.class public Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# instance fields
.field private mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mKeyguardAdded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    return-void
.end method


# virtual methods
.method protected callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 166
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    .line 59
    return-void
.end method

.method protected getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method protected getWakePolicyFlag()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public goingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->screenTurnedOffInternal(I)V

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->goingToSleep(I)V

    .line 49
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 36
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 122
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 127
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 63
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 69
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isInLockTaskMode()Z
    .locals 3

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 195
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 202
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 147
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isScreenOnInternal()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method protected isStatusBarKeyguard()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 1
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 172
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 86
    const/16 v1, 0x7d4

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 88
    const/4 v0, -0x7

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 95
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 96
    .local v0, "ret":I
    const/16 v1, 0x7d0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_1

    .line 106
    const-string v1, "WindowManager"

    const-string v2, "Removing keyguard window (Did it crash?)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    .line 111
    .local v0, "isStatusBarWindowRemoving":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 112
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-nez v1, :cond_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    goto :goto_0

    .line 110
    .end local v0    # "isStatusBarWindowRemoving":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected screenOffBecauseOfProxSensor()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method protected setKeyguardVisibilityState(Z)Z
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setOccluded(Z)I

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected stopLockTaskMode()Z
    .locals 3

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 181
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v2, 0x1

    .line 189
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return v2

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->systemReady()V

    .line 41
    new-instance v0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->systemReadyInternal()V

    .line 43
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 157
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_0

    .line 158
    const/16 v0, 0xd

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    goto :goto_0
.end method
