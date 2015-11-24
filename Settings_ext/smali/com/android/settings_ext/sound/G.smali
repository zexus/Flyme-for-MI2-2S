.class public Lcom/android/settings_ext/sound/G;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private Uk:Lmiui/widget/SeekBar;

.field final synthetic ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;

.field private ajU:I

.field private ajV:Landroid/media/MediaPlayer;

.field private ajW:I

.field private ajX:I

.field private ajY:Z

.field private ajZ:Landroid/net/Uri;

.field private aka:D

.field private akb:Landroid/database/ContentObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;I)V
    .locals 6

    .prologue
    .line 471
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/sound/G;-><init>(Lcom/android/settings_ext/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V

    .line 472
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ext/sound/RingerVolumeFragment;Landroid/content/Context;Lmiui/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 474
    iput-object p1, p0, Lcom/android/settings_ext/sound/G;->ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/sound/G;->mHandler:Landroid/os/Handler;

    .line 447
    iput v1, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    .line 449
    iput v1, p0, Lcom/android/settings_ext/sound/G;->ajX:I

    .line 454
    new-instance v0, Lcom/android/settings_ext/sound/H;

    iget-object v1, p0, Lcom/android/settings_ext/sound/G;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/sound/H;-><init>(Lcom/android/settings_ext/sound/G;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/sound/G;->akb:Landroid/database/ContentObserver;

    .line 475
    iput-object p2, p0, Lcom/android/settings_ext/sound/G;->mContext:Landroid/content/Context;

    .line 476
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    .line 477
    iput p4, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    .line 478
    iput-object p3, p0, Lcom/android/settings_ext/sound/G;->Uk:Lmiui/widget/SeekBar;

    .line 480
    invoke-direct {p0, p3, p5}, Lcom/android/settings_ext/sound/G;->a(Lmiui/widget/SeekBar;Landroid/net/Uri;)V

    .line 481
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/sound/G;I)I
    .locals 0

    .prologue
    .line 435
    iput p1, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/sound/G;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Lmiui/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 507
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiui/widget/SeekBar;->setMax(I)V

    .line 508
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings_ext/sound/G;->aka:D

    .line 509
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/sound/G;->ajU:I

    .line 510
    iget v0, p0, Lcom/android/settings_ext/sound/G;->ajU:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/sound/G;->cp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 511
    invoke-virtual {p1, p0}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 513
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ext/sound/G;->akb:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    if-nez p2, :cond_1

    .line 518
    iget v0, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 519
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 525
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;

    invoke-static {v0}, Lcom/android/settings_ext/sound/RingerVolumeFragment;->c(Lcom/android/settings_ext/sound/RingerVolumeFragment;)Landroid/net/Uri;

    move-result-object p2

    .line 529
    :cond_1
    iput-object p2, p0, Lcom/android/settings_ext/sound/G;->ajZ:Landroid/net/Uri;

    .line 530
    return-void

    .line 520
    :cond_2
    iget v0, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 521
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 522
    :cond_3
    iget v0, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 523
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/sound/G;)Lmiui/widget/SeekBar;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->Uk:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/sound/G;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/sound/G;)I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    return v0
.end method

.method private rP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 631
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 632
    iput-object v1, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    .line 634
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/sound/G;->ajY:Z

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/sound/G;->ajY:Z

    .line 638
    :cond_1
    return-void
.end method


# virtual methods
.method cp(I)I
    .locals 4

    .prologue
    .line 484
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings_ext/sound/G;->aka:D

    mul-double/2addr v0, v2

    double-to-int v1, v0

    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mContext:Landroid/content/Context;

    const-string v2, "ringer_volume_progress"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    aget-object v2, v2, v3

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/sound/G;->cq(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 491
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method cq(I)I
    .locals 6

    .prologue
    .line 496
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings_ext/sound/G;->aka:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings_ext/sound/G;->aka:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 497
    if-lez p1, :cond_1

    if-nez v0, :cond_1

    .line 498
    add-int/lit8 v0, v0, 0x1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 501
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method cr(I)V
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/sound/G;->cq(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    .line 560
    return-void
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/android/settings_ext/sound/G;->rP()V

    .line 685
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 547
    if-nez p3, :cond_0

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mContext:Landroid/content/Context;

    const-string v1, "ringer_volume_progress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/sound/G;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2

    .prologue
    .line 675
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 676
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings_ext/sound/G;->ajU:I

    .line 677
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    .line 678
    iget v0, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/sound/G;->cp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/sound/G;->postSetVolume(I)V

    .line 680
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    if-ltz v0, :cond_0

    .line 669
    iget v0, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 670
    iget v0, p0, Lcom/android/settings_ext/sound/G;->ajU:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 672
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ext/sound/G;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/settings_ext/sound/G;->startSample()V

    .line 578
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/sound/G;->cr(I)V

    .line 565
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 567
    return-void
.end method

.method public rO()V
    .locals 4

    .prologue
    .line 539
    iget v0, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    invoke-static {v0}, Lcom/android/settings_ext/fk;->S(I)I

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 541
    iput v0, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    .line 542
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    iget v2, p0, Lcom/android/settings_ext/sound/G;->ajW:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 582
    return-void
.end method

.method public startSample()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/sound/RingerVolumeFragment;->a(Lcom/android/settings_ext/sound/G;)V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajZ:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 591
    iput-object v4, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    .line 620
    :goto_0
    return-void

    .line 595
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    .line 596
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings_ext/sound/I;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/sound/I;-><init>(Lcom/android/settings_ext/sound/G;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings_ext/sound/G;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ext/sound/G;->ajZ:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 608
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/settings_ext/sound/G;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 609
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 610
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 611
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 613
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/sound/G;->ajY:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    iput-object v4, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 617
    :catch_1
    move-exception v0

    .line 618
    iput-object v4, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/settings_ext/sound/G;->stopSample()V

    .line 534
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/sound/G;->akb:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->Uk:Lmiui/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 536
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_ext/sound/G;->ajV:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/android/settings_ext/sound/G;->rP()V

    .line 626
    :cond_0
    return-void
.end method
