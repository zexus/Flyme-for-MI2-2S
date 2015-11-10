.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangeMusicVolumeIfNeeded:Ljava/lang/Runnable;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLastMusicVolumeWhenMuted:I

.field private mPreviousRingerMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRingerModeChanged:Ljava/lang/Runnable;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 468
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeChanged:Ljava/lang/Runnable;

    .line 500
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$2;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mLastMusicVolumeWhenMuted:I

    .line 515
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$3;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$3;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mChangeMusicVolumeIfNeeded:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    .line 83
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 85
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 86
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 87
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->handleRingerModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->changeMusicVolumeIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method private audienceMatches(F)Z
    .locals 4
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 455
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_0

    .line 463
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 459
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 461
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private changeMusicVolumeIfNeeded(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 523
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeMusicVolumeIfNeeded() reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    .line 525
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeHelper"

    const-string v2, "AudioManager not started, deffer to do it"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mChangeMusicVolumeIfNeeded:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 530
    .local v0, "vol":I
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-nez v1, :cond_7

    .line 531
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Music has been muted, vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_4
    iput v5, p0, Lcom/android/server/notification/ZenModeHelper;->mLastMusicVolumeWhenMuted:I

    goto :goto_0

    .line 535
    :cond_5
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZEN_MODE mute music, vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v5, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 537
    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastMusicVolumeWhenMuted:I

    goto :goto_0

    .line 539
    :cond_7
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mLastMusicVolumeWhenMuted:I

    if-lez v1, :cond_1

    .line 540
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZEN_MODE unmute music, vol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mLastMusicVolumeWhenMuted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mLastMusicVolumeWhenMuted:I

    invoke-virtual {v1, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0
.end method

.method private changeZenModeIfNeeded(I)I
    .locals 3
    .param p1, "zenModeValue"    # I

    .prologue
    .line 546
    const/4 v0, -0x1

    .line 547
    .local v0, "newZenModeValue":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-nez v1, :cond_1

    .line 549
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeHelper"

    const-string v2, "changeZenModeIfNeeded() Enter ZEN_MODE_NO_INTERRUPTIONS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    const/4 v0, 0x2

    .line 558
    :cond_1
    :goto_0
    return v0

    .line 552
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-eqz v1, :cond_1

    .line 554
    :cond_3
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ZenModeHelper"

    const-string v2, "changeZenModeIfNeeded() Enter ZEN_MODE_MIUI_SILENT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 381
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_0

    .line 383
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    .prologue
    .line 386
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 387
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_0

    .line 389
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private handleRingerModeChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 353
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 356
    .local v1, "ringerMode":I
    const/4 v0, -0x1

    .line 357
    .local v0, "newZen":I
    if-nez v1, :cond_3

    .line 358
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    const/4 v0, 0x1

    .line 370
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/android/server/notification/ZenModeHelperInjector;->adjustNewZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I

    move-result v0

    .line 372
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 373
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v1, v2, v0}, Lcom/android/server/notification/ZenLog;->traceFollowRingerMode(III)V

    .line 374
    const-string v2, "ringerMode"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 377
    .end local v0    # "newZen":I
    .end local v1    # "ringerMode":I
    :cond_1
    return-void

    .line 361
    .restart local v0    # "newZen":I
    .restart local v1    # "ringerMode":I
    :cond_2
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v2, v4, :cond_0

    .line 362
    const/4 v0, 0x2

    goto :goto_0

    .line 364
    :cond_3
    if-eq v1, v4, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_4
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v2, v4, :cond_0

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 396
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 423
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 426
    :goto_0
    return v2

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 414
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 415
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 414
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 417
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 402
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 430
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 392
    const-string v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110003

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 98
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 99
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 100
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 107
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 107
    :goto_1
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zenModeFromListenerInterruptionFilter(II)I
    .locals 0
    .param p0, "listenerInterruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 141
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 135
    .restart local p1    # "defValue":I
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 137
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 139
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreviousRingerMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 406
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 442
    .local v1, "zen":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v2

    .line 443
    :cond_1
    if-ne v1, v3, :cond_2

    .line 444
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_0

    .line 445
    if-eqz p3, :cond_2

    .line 446
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 448
    .local v0, "contactAffinity":F
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v2

    goto :goto_0

    .end local v0    # "contactAffinity":F
    :cond_2
    move v2, v3

    .line 451
    goto :goto_0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 325
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 328
    :cond_0
    return-void
.end method

.method public requestFromListener(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    const/4 v1, -0x1

    .line 146
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenModeHelper;->zenModeFromListenerInterruptionFilter(II)I

    move-result v0

    .line 147
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    .line 148
    const-string v1, "listener"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 116
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v1, 0x1

    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 349
    :cond_1
    :goto_0
    return v1

    .line 340
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConfig() mZenMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v4}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 344
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 345
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 346
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode_config_etag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->updateZenMode()V

    goto :goto_0
.end method

.method public setZenMode(ILjava/lang/String;)V
    .locals 2
    .param p1, "zenModeValue"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 168
    const-string v1, "priorityApp"

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_1
    const-string v0, "none"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 160
    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_3

    .line 173
    const-string v0, "!allowCalls"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 174
    goto :goto_0

    .line 176
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 178
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_5

    .line 180
    const-string v0, "!allowMessages"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 188
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_0

    .line 189
    const-string v0, "!allowEvents"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-nez v2, :cond_7

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 199
    const-string v0, "miui_silent !allowAlarm"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 200
    goto :goto_0

    .line 202
    :cond_7
    const-string v1, "miui_silent"

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateZenMode()V
    .locals 12

    .prologue
    .line 229
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "zen_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 232
    .local v2, "mode":I
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->changeZenModeIfNeeded(I)I

    move-result v5

    .line 233
    .local v5, "newMode":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 235
    const-string v8, "updateZenMode"

    invoke-virtual {p0, v5, v8}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 238
    :cond_0
    sget-boolean v8, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ZenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateZenMode() mConfig = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v2, v8, :cond_2

    .line 241
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v8, v2}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 243
    :cond_2
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 244
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v8, :cond_a

    const/4 v7, 0x1

    .line 245
    .local v7, "zen":Z
    :goto_1
    const/4 v0, 0x0

    .line 253
    .local v0, "exceptionPackages":[Ljava/lang/String;
    if-eqz v7, :cond_b

    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_b

    const/4 v4, 0x1

    .line 260
    .local v4, "muteCalls":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v10, 0x1c

    const/4 v11, 0x6

    if-eqz v4, :cond_c

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 263
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-eqz v8, :cond_4

    .line 264
    sget-boolean v8, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ZenModeHelper"

    const-string v9, "updateZenMode() ZEN_MODE_MIUI_SILENT allow call vibration"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_3
    const/4 v4, 0x0

    .line 267
    :cond_4
    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v10, 0x3

    const/4 v11, 0x6

    if-eqz v4, :cond_d

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 275
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-nez v8, :cond_e

    :cond_5
    const/4 v3, 0x1

    .line 276
    .local v3, "muteAlarms":Z
    :goto_5
    sget-boolean v8, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "ZenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateZenMode() muteAlarms = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_6
    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v10, 0x3

    const/4 v11, 0x4

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 280
    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v10, 0x1c

    const/4 v11, 0x4

    if-eqz v3, :cond_10

    const/4 v8, 0x1

    :goto_7
    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 285
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v8, :cond_9

    .line 286
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 287
    .local v6, "ringerMode":I
    const/4 v1, -0x1

    .line 288
    .local v1, "forcedRingerMode":I
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    .line 289
    if-eqz v6, :cond_8

    .line 290
    iput v6, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 291
    sget-boolean v8, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "ZenModeHelper"

    const-string v9, "Silencing ringer"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_7
    const/4 v1, 0x0

    .line 303
    :cond_8
    :goto_8
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v8, v6}, Lcom/android/server/notification/ZenModeHelperInjector;->adjustForcedRingerMode(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I

    move-result v1

    .line 306
    const/4 v8, -0x1

    if-eq v1, v8, :cond_9

    .line 307
    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 308
    invoke-static {v1}, Lcom/android/server/notification/ZenLog;->traceSetRingerMode(I)V

    .line 311
    .end local v1    # "forcedRingerMode":I
    .end local v6    # "ringerMode":I
    :cond_9
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    goto/16 :goto_0

    .line 244
    .end local v0    # "exceptionPackages":[Ljava/lang/String;
    .end local v3    # "muteAlarms":Z
    .end local v4    # "muteCalls":Z
    .end local v7    # "zen":Z
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 253
    .restart local v0    # "exceptionPackages":[Ljava/lang/String;
    .restart local v7    # "zen":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 260
    .restart local v4    # "muteCalls":Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 267
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 275
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 277
    .restart local v3    # "muteAlarms":Z
    :cond_f
    const/4 v8, 0x0

    goto :goto_6

    .line 280
    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    .line 295
    .restart local v1    # "forcedRingerMode":I
    .restart local v6    # "ringerMode":I
    :cond_11
    if-nez v6, :cond_8

    .line 296
    sget-boolean v8, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v8, :cond_12

    const-string v8, "ZenModeHelper"

    const-string v9, "Unsilencing ringer"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_12
    iget v8, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_13

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 299
    :goto_9
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    goto :goto_8

    .line 297
    :cond_13
    const/4 v1, 0x2

    goto :goto_9
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 332
    return-void
.end method
