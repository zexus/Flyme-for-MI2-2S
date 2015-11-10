.class public abstract Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;,
        Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field protected static final INTERCEPT_EXPECTED_RESULT_GO_TO_SLEEP:I = -0x1

.field protected static final INTERCEPT_EXPECTED_RESULT_NONE:I = 0x0

.field protected static final INTERCEPT_EXPECTED_RESULT_WAKE_UP:I = 0x1

.field private static final SHORTCUT_ENABLE_SCREEN_BUTTONS:I

.field private static final SHORTCUT_MAX_BRIGHTNESS:I

.field private static final SHORTCUT_SCREENSHOT_ANDROID:I

.field private static final SHORTCUT_SCREENSHOT_MIUI:I

.field private static final SHORTCUT_UNLOCK:I

.field private static final SNAP_KEY:I = 0x19

.field private static final SNAP_TIMEOUT:I = 0x7530

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field mCameraKeyWakeScreen:Z

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field private mIgnoreAppSwitch:Z

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

.field private mMiuiSettingsReceiver:Landroid/database/ContentObserver;

.field mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mPressToAppSwitch:Z

.field private mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

.field private final mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRequestShowMenu:Z

.field mScreenButtonsDisabled:Z

.field private mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

.field protected mScreenOffReason:I

.field private mScreenOnByLid:Z

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutTriggered:Z

.field private mSmartCoverLidOpen:Z

.field mSnapConnection:Landroid/content/ServiceConnection;

.field final mSnapLock:Ljava/lang/Object;

.field mSnapMessager:Landroid/os/Messenger;

.field private final mSnapRunnable:Ljava/lang/Runnable;

.field final mSnapTimeoutRunnable:Ljava/lang/Runnable;

.field private mSoftKeyboardWinToken:Landroid/os/IBinder;

.field private mStatusBarDisableToken:Landroid/os/Binder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarVisible:Z

.field private mSuperWaitingKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnabled:Z

.field private mTorchIsJustTurnedOn:Z

.field private mTorchStateReceiver:Landroid/database/ContentObserver;

.field mTrackballWakeScreen:Z

.field private final mTurnOffTorch:Ljava/lang/Runnable;

.field mVolumeKeyWakeScreen:Z

.field private mWifiOnly:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWindowFlagBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x52

    const/16 v4, 0x1a

    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 112
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    .line 114
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    .line 116
    invoke-static {v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    .line 118
    invoke-static {v5}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    .line 120
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 336
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/database/ContentObserver;

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;

    .line 521
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    .line 530
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    .line 549
    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 550
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 871
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    .line 908
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 955
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 957
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1024
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 1033
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1053
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .line 1644
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapRunnable:Ljava/lang/Runnable;

    .line 1670
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapLock:Ljava/lang/Object;

    .line 1671
    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    .line 1673
    new-instance v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1689
    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapMessager:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->triggerSnapService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 94
    sparse-switch p0, :sswitch_data_0

    .line 109
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 97
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 99
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 103
    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    .line 105
    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 107
    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    .line 1542
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1544
    .local v0, "service":Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 1545
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_0
    return-object v0
.end method

.method private handleKeyCombination()V
    .locals 4

    .prologue
    .line 470
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/4 v0, 0x0

    .line 473
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-ne v1, v2, :cond_2

    .line 475
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 476
    const/4 v0, 0x1

    .line 499
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    goto :goto_0

    .line 479
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    if-ne v1, v2, :cond_4

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->stopLockTaskMode()Z

    move-result v0

    .line 481
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    const/4 v0, 0x1

    goto :goto_1

    .line 486
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    if-ne v1, v2, :cond_5

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 488
    const/4 v0, 0x1

    goto :goto_1

    .line 490
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    if-ne v1, v2, :cond_2

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private interceptSnapKey(Z)V
    .locals 4
    .param p1, "down"    # Z

    .prologue
    .line 1652
    if-eqz p1, :cond_2

    .line 1653
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 1658
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendSnapMsg(I)V

    .line 1668
    :cond_1
    :goto_0
    return-void

    .line 1661
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1662
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1664
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 1665
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sendSnapMsg(I)V

    goto :goto_0
.end method

.method private isInCallScreenShowing()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 451
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "runningActivity":Ljava/lang/String;
    const-string v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private markShortcutTriggered()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 467
    return-void
.end method

.method private playSoundEffect()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1353
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1354
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1358
    :goto_0
    return v1

    .line 1357
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1358
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private releaseScreenOnProximitySensor()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->release()Z

    .line 334
    :cond_0
    return-void
.end method

.method private resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 513
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 514
    iput v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 515
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 516
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 519
    return-void
.end method

.method private saveWindowTypeLayer(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v3, "typeLayers":Lorg/json/JSONObject;
    const/16 v2, 0x7d0

    .local v2, "type":I
    :goto_0
    const/16 v4, 0xbb7

    if-gt v2, v4, :cond_1

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 216
    .local v1, "layer":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 218
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v1    # "layer":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_type_layer"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    return-void
.end method

.method private sendSnapMsg(I)V
    .locals 6
    .param p1, "what"    # I

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapMessager:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1695
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1696
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1697
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1700
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1702
    .local v0, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapMessager:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1703
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 964
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 966
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 967
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 968
    if-eqz p1, :cond_0

    const/high16 v2, -0x80000000

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 984
    :goto_1
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 981
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 982
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setTorch(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1043
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1050
    :goto_0
    return v1

    .line 1045
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1050
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private triggerSnapService()V
    .locals 10

    .prologue
    .line 1710
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1711
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    if-eqz v4, :cond_0

    .line 1712
    monitor-exit v5

    .line 1745
    :goto_0
    return-void

    .line 1714
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v6, "com.android.camera.snap.SnapService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1717
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1718
    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    .local v1, "conn":Landroid/content/ServiceConnection;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v1, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1737
    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    .line 1738
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1744
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1740
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "conn":Landroid/content/ServiceConnection;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1741
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected abstract callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1574
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1575
    const/4 v0, 0x0

    .line 1577
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1551
    iget-object v5, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1552
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return v4

    .line 1556
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1558
    .local v3, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 1562
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1563
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1564
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public enableScreenAfterBoot()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1618
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 1621
    const-string v1, "persist.sys.smartcover_enabled"

    .line 1622
    .local v1, "legacySmartcoverModeKey":Ljava/lang/String;
    const-string v4, "persist.sys.smartcover_enabled"

    invoke-static {v4, v2}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1623
    const-string v4, "persist.sys.smartcover_enabled"

    invoke-static {v4, v3}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Z)V

    .line 1624
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v2}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 1628
    :cond_0
    const-string v4, "ro.radio.noril"

    invoke-static {v4, v3}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    .line 1629
    const/4 v0, 0x0

    .line 1630
    .local v0, "inSmallWindowMode":Z
    const-string v4, "persist.sys.smartcover_mode"

    invoke-static {v4, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1633
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 1634
    iget v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v4, :cond_2

    move v0, v2

    .line 1636
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_small_window"

    invoke-static {v2, v3, v0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1638
    return-void

    :cond_2
    move v0, v3

    .line 1634
    goto :goto_0
.end method

.method protected abstract finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 6

    .prologue
    .line 911
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    .line 912
    .local v0, "changes":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 913
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 915
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 916
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 917
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    const-string v5, "system"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_1
    return v0

    .line 917
    .restart local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    const/16 v3, 0x100

    goto :goto_0

    .line 923
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 924
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when disable status bar visible"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v0, :cond_0

    .line 945
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    goto :goto_0
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 934
    .local v0, "statusBar":Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_0

    .line 935
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 936
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 940
    :cond_0
    return-void
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 879
    .local v2, "keyguard":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHideLockScreen:Z

    if-nez v4, :cond_1

    move-object v3, v2

    .line 881
    .local v3, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    const/4 v1, 0x0

    .line 882
    .local v1, "flags":I
    if-eqz v3, :cond_0

    .line 883
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v1, v4

    .line 884
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 885
    or-int/lit8 v1, v1, 0x1

    .line 889
    :cond_0
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getDisabledFlags(I)I

    move-result v0

    .line 890
    .local v0, "disabledFlag":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$8;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v4

    return v4

    .line 879
    .end local v0    # "disabledFlag":I
    .end local v1    # "flags":I
    .end local v3    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method protected abstract getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public getSoftKeyboardToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected abstract getWakePolicyFlag()I
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$13;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1539
    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v5, 0x0

    .line 175
    sput-object p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    .line 176
    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    .line 177
    .local v1, "settingsObserver":Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 179
    new-instance v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v2, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 201
    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v2, p1, v5}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_key_press_app_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->saveWindowTypeLayer(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 537
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 540
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 542
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    .line 544
    :cond_0
    return p4

    .line 537
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 344
    .local v6, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v2, 0x1

    .line 345
    .local v2, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 347
    .local v1, "canceled":Z
    if-eqz v2, :cond_0

    if-nez v6, :cond_0

    .line 348
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 351
    :cond_0
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v11, :cond_2

    .line 352
    const-wide/16 v12, -0x1

    .line 445
    :goto_1
    return-wide v12

    .line 344
    .end local v1    # "canceled":Z
    .end local v2    # "down":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 355
    .restart local v1    # "canceled":Z
    .restart local v2    # "down":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 356
    .local v5, "keyCode":I
    const/16 v11, 0x52

    if-ne v5, v11, :cond_3

    const/16 v5, 0xbb

    .line 362
    :cond_3
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v11, :cond_4

    .line 363
    sparse-switch v5, :sswitch_data_0

    .line 373
    :cond_4
    const/16 v11, 0xbb

    if-ne v5, v11, :cond_a

    .line 374
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-eqz v11, :cond_8

    .line 375
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    if-nez v11, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v11

    if-nez v11, :cond_5

    .line 376
    if-eqz v2, :cond_6

    .line 377
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$400(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V

    .line 382
    :cond_5
    :goto_2
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-eqz v11, :cond_7

    .line 383
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    .line 385
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 369
    :sswitch_0
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 379
    :cond_6
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$500(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    goto :goto_2

    .line 387
    :cond_7
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 389
    :cond_8
    if-nez v2, :cond_9

    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 390
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 392
    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 396
    :cond_a
    const/4 v11, 0x3

    if-ne v5, v11, :cond_14

    .line 397
    if-nez v2, :cond_f

    .line 398
    if-nez v1, :cond_e

    .line 400
    :try_start_0
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 401
    .local v8, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v11, :cond_c

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 404
    const-string v11, "WindowManager"

    const-string v12, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_3
    const-wide/16 v12, -0x1

    goto/16 :goto_1

    .line 407
    .restart local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_c
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 409
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "statusbar"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    .line 410
    .local v7, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v7}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 412
    .end local v7    # "sbm":Landroid/app/StatusBarManager;
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 414
    .end local v8    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 415
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v11, "WindowManager"

    const-string v12, "RemoteException from getPhoneInterface()"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 418
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_e
    const-string v11, "WindowManager"

    const-string v12, "Ignoring HOME; event canceled."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 424
    :cond_f
    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 425
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    if-eqz v0, :cond_b

    .line 426
    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 427
    .local v9, "type":I
    const/16 v11, 0x7d4

    if-eq v9, v11, :cond_10

    const/16 v11, 0x7d9

    if-ne v9, v11, :cond_12

    .line 430
    :cond_10
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 424
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "type":I
    :cond_11
    const/4 v0, 0x0

    goto :goto_4

    .line 432
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "type":I
    :cond_12
    sget-object v11, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v10, v11

    .line 433
    .local v10, "typeCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v10, :cond_b

    .line 434
    sget-object v11, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v11, v11, v4

    if-ne v9, v11, :cond_13

    .line 436
    iget-object v11, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 433
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 445
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "i":I
    .end local v9    # "type":I
    .end local v10    # "typeCount":I
    :cond_14
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v12

    goto/16 :goto_1

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .locals 30
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v25

    if-nez v25, :cond_1

    const/4 v10, 0x1

    .line 563
    .local v10, "down":Z
    :goto_0
    const/high16 v25, 0x1000000

    and-int v25, v25, p2

    if-eqz v25, :cond_2

    const/4 v13, 0x1

    .line 565
    .local v13, "isInjected":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v16

    .line 566
    .local v16, "keyCode":I
    const/16 v25, 0x52

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v16, 0xbb

    .line 568
    :cond_0
    const-string v25, "sys.in_shutdown_progress"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 570
    const-string v25, "WindowManager"

    const-string v26, "this device is being shut down, ignore key event."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v25, 0x0

    .line 866
    :goto_2
    return v25

    .line 562
    .end local v10    # "down":Z
    .end local v13    # "isInjected":Z
    .end local v16    # "keyCode":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 563
    .restart local v10    # "down":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 575
    .restart local v13    # "isInjected":Z
    .restart local v16    # "keyCode":I
    :cond_3
    const/16 v25, 0xe0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$7;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v25, v0

    if-nez v25, :cond_5

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 591
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidState:I

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 592
    const/16 v25, 0xbb

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, 0x3

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, 0x4

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 593
    :cond_6
    const/16 v25, 0x0

    goto :goto_2

    .line 597
    :cond_7
    const/16 v25, 0x3

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 598
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x7d0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    :cond_8
    const/16 v25, 0x1a

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 604
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 613
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 616
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "persist.camera.snap.enable"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 619
    if-eqz p3, :cond_e

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 637
    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v25

    if-eqz v25, :cond_11

    const-string v25, "synaptics_dsx_edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    const-string v25, "atmel-maxtouch-edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 640
    :cond_b
    const/16 v25, 0x78

    move/from16 v0, v25

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 648
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 608
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 609
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 608
    :cond_d
    const/16 v25, 0x0

    goto :goto_4

    .line 624
    :cond_e
    const/16 v25, 0x19

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 626
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->interceptSnapKey(Z)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSnapConnection:Landroid/content/ServiceConnection;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 628
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v25

    goto/16 :goto_2

    .line 651
    :cond_f
    const/16 v25, 0x1c

    move/from16 v0, v25

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    .line 660
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 663
    :cond_10
    const/16 v25, 0x4

    move/from16 v0, v25

    move/from16 v1, v16

    if-ne v0, v1, :cond_11

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "edge_handgrip_back"

    const/16 v27, -0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 667
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 672
    :cond_11
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v15

    .line 673
    .local v15, "keyBitMask":I
    if-eqz v10, :cond_12

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v25, v0

    or-int v25, v25, v15

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v25, v0

    or-int v25, v25, v15

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 681
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->handleKeyCombination()V

    .line 683
    const/16 v25, 0x1a

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->forceShow()V

    .line 686
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 678
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v25, v0

    xor-int/lit8 v26, v15, -0x1

    and-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_5

    .line 689
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 690
    sparse-switch v16, :sswitch_data_0

    .line 700
    :cond_14
    if-nez v10, :cond_16

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 712
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 713
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 696
    :sswitch_0
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 702
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v25

    if-nez v25, :cond_15

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v25, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(I)V

    goto :goto_6

    .line 707
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_6

    .line 716
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v25, v0

    if-nez v25, :cond_1a

    const/16 v17, 0x0

    .line 719
    .local v17, "keyguardActive":Z
    :goto_7
    if-nez p3, :cond_19

    if-eqz v13, :cond_1c

    .line 721
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21

    if-eqz v17, :cond_21

    const/16 v25, 0x1b

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    if-nez v10, :cond_21

    .line 722
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 716
    .end local v17    # "keyguardActive":Z
    :cond_1a
    if-eqz p3, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v17

    goto :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v17

    goto :goto_7

    .line 725
    .restart local v17    # "keyguardActive":Z
    :cond_1c
    const/4 v14, 0x1

    .line 726
    .local v14, "isWakeKey":Z
    const/4 v6, 0x0

    .line 729
    .local v6, "allowToWake":Z
    sparse-switch v16, :sswitch_data_1

    .line 750
    const/4 v14, 0x0

    .line 753
    :cond_1d
    :goto_8
    if-eqz v14, :cond_21

    .line 754
    if-eqz v6, :cond_20

    .line 755
    if-eqz v10, :cond_1e

    .line 757
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 731
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 732
    goto :goto_8

    .line 735
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 736
    goto :goto_8

    .line 740
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->screenOffBecauseOfProxSensor()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 745
    const/4 v6, 0x0

    goto :goto_8

    .line 760
    :cond_1e
    if-eqz v17, :cond_1f

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    move-object/from16 v25, v0

    const/16 v26, 0x1a

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 763
    :cond_1f
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 766
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v25

    xor-int/lit8 v25, v25, -0x1

    and-int p2, p2, v25

    .line 770
    .end local v6    # "allowToWake":Z
    .end local v14    # "isWakeKey":Z
    :cond_21
    const/16 v25, 0x4f

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_23

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "enable_mikey_mode"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v11

    .line 776
    .local v11, "enabled":Z
    if-eqz v11, :cond_23

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v25

    if-nez v25, :cond_22

    .line 778
    new-instance v18, Landroid/content/Intent;

    const-string v25, "miui.intent.action.MIKEY_BUTTON"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v18, "mikeyIntent":Landroid/content/Intent;
    const-string v25, "com.xiaomi.miclick"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const-string v25, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v25, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 785
    .end local v18    # "mikeyIntent":Landroid/content/Intent;
    :cond_22
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 789
    .end local v11    # "enabled":Z
    :cond_23
    if-eqz v10, :cond_30

    .line 791
    const/16 v25, 0x1a

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a

    const/16 v23, 0x1

    .line 792
    .local v23, "stopNotification":Z
    :goto_9
    if-nez v23, :cond_25

    .line 793
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v24

    .line 794
    .local v24, "wm":Landroid/view/IWindowManager;
    if-eqz v24, :cond_25

    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v25

    if-eqz v25, :cond_25

    .line 795
    const/16 v25, 0x19

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_24

    const/16 v25, 0x18

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_24

    const/16 v25, 0xa4

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 798
    :cond_24
    const/16 v23, 0x1

    .line 803
    .end local v24    # "wm":Landroid/view/IWindowManager;
    :cond_25
    if-eqz v23, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    move/from16 v25, v0

    if-eqz v25, :cond_26

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    .line 805
    .local v22, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v22, :cond_26

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 810
    .end local v22    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_26
    const/16 v25, 0x1a

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_27

    const/16 v25, 0x19

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_27

    const/16 v25, 0xa4

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    .line 813
    :cond_27
    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.intent.action.KEYCODE_MUTE"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v12, "i":Landroid/content/Intent;
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 818
    .end local v12    # "i":Landroid/content/Intent;
    :cond_28
    const/16 v25, 0x19

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_29

    const/16 v25, 0x18

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    .line 820
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 821
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v25, "remote_control_proc_name"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 822
    .local v20, "proc":Ljava/lang/String;
    const-string v25, "remote_control_pkg_name"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 824
    .local v19, "pkg":Ljava/lang/String;
    if-eqz v20, :cond_2c

    if-eqz v19, :cond_2c

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 826
    .local v8, "c":J
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v21

    .line 830
    .local v21, "running":Z
    if-eqz v21, :cond_2b

    .line 831
    new-instance v12, Landroid/content/Intent;

    const-string v25, "miui.intent.action.REMOTE_CONTROL"

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .restart local v12    # "i":Landroid/content/Intent;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 834
    const-string v25, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 836
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v25

    goto/16 :goto_2

    .line 791
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "c":J
    .end local v12    # "i":Landroid/content/Intent;
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v20    # "proc":Ljava/lang/String;
    .end local v21    # "running":Z
    .end local v23    # "stopNotification":Z
    :cond_2a
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 838
    .restart local v7    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "c":J
    .restart local v19    # "pkg":Ljava/lang/String;
    .restart local v20    # "proc":Ljava/lang/String;
    .restart local v21    # "running":Z
    .restart local v23    # "stopNotification":Z
    :cond_2b
    const-string v25, "remote_control_proc_name"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 839
    const-string v25, "remote_control_pkg_name"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 851
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "c":J
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v20    # "proc":Ljava/lang/String;
    .end local v21    # "running":Z
    .end local v23    # "stopNotification":Z
    :cond_2c
    :goto_a
    if-eqz v10, :cond_2e

    const/16 v25, 0x18

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_2d

    const/16 v25, 0x19

    move/from16 v0, v25

    move/from16 v1, v16

    if-ne v0, v1, :cond_2e

    .line 852
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_2e
    if-eqz v10, :cond_2f

    and-int/lit8 v25, p2, 0x2

    if-eqz v25, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v25

    if-nez v25, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_2f

    .line 857
    sparse-switch v16, :sswitch_data_2

    .line 866
    :cond_2f
    :goto_b
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v25

    goto/16 :goto_2

    .line 846
    :cond_30
    const/16 v25, 0x1a

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/Intent;

    const-string v27, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct/range {v26 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 863
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->playSoundEffect()Z

    goto :goto_b

    .line 843
    .restart local v23    # "stopNotification":Z
    :catch_0
    move-exception v25

    goto :goto_a

    .line 632
    .end local v15    # "keyBitMask":I
    .end local v17    # "keyguardActive":Z
    .end local v23    # "stopNotification":Z
    :catch_1
    move-exception v25

    goto/16 :goto_3

    .line 690
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch

    .line 729
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x110 -> :sswitch_1
    .end sparse-switch

    .line 857
    :sswitch_data_2
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x52 -> :sswitch_4
        0x54 -> :sswitch_4
        0xbb -> :sswitch_4
    .end sparse-switch
.end method

.method isAutoBrightnessMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1608
    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method isPhoneOffhook()Z
    .locals 3

    .prologue
    .line 1581
    const/4 v0, 0x0

    .line 1583
    .local v0, "isOffhook":Z
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1584
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1585
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1590
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v0

    .line 1587
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected abstract isScreenOnInternal()Z
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 301
    const-string v1, "persist.sys.smartcover_mode"

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 304
    .local v0, "smartcoverMode":I
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 308
    :cond_0
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 310
    if-nez p3, :cond_2

    .line 311
    const-string v1, "sys.keyguard.screen_off_by_lid"

    const-string v4, "true"

    invoke-static {v1, v4}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "miui.intent.action.SMART_COVER_CLOSED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    :goto_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_small_window"

    if-nez p3, :cond_3

    move v1, v2

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 320
    if-nez p3, :cond_4

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 327
    :cond_1
    :goto_3
    if-ne v2, v0, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 329
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    goto :goto_0

    .line 314
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnByLid:Z

    goto :goto_1

    :cond_3
    move v1, v3

    .line 318
    goto :goto_2

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_3

    :cond_5
    move v2, v3

    .line 327
    goto :goto_4
.end method

.method protected abstract onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 1363
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    const/4 v0, 0x0

    .line 1374
    :goto_0
    return v0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    .line 1374
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected registerStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 986
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_window_loaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 236
    return-void
.end method

.method protected abstract screenOffBecauseOfProxSensor()Z
.end method

.method protected screenTurnedOffInternal(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 292
    iput p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnByLid:Z

    .line 294
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 295
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 265
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_screen_on_proximity_sensor"

    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/SystemSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 273
    .local v0, "proximitySensorEnableSettings":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mScreenOnByLid:Z

    if-eqz v1, :cond_2

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;->aquire()V

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 285
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_4

    .line 286
    const-string v1, "sys.keyguard.screen_off_by_lid"

    const-string v2, "false"

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_4
    return-void
.end method

.method setMaxTemporaryScreenBrightness()V
    .locals 4

    .prologue
    .line 1594
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1596
    .local v2, "power":Landroid/os/IPowerManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1597
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1598
    .local v0, "autoBrightnessAdjustment":F
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 1605
    .end local v0    # "autoBrightnessAdjustment":F
    :goto_0
    return-void

    .line 1600
    :cond_0
    const/16 v3, 0xff

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1602
    :catch_0
    move-exception v1

    .line 1603
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$12;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1524
    return-void
.end method

.method protected stopLockTaskMode()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected systemReadyInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 253
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    new-instance v1, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    iget-object v2, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/internal/policy/impl/MiuiScreenOnProximityLock;

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v4}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 259
    invoke-static {v4}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 260
    return-void
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 987
    return-void
.end method
