.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final xJ:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mm:Lcom/android/settings/eM;

.field private mn:Z

.field private final mp:Lcom/android/settings/eN;

.field private sl:Lcom/android/settings/DefaultRingtonePreference;

.field private xK:Landroid/preference/CheckBoxPreference;

.field private xL:Landroid/preference/CheckBoxPreference;

.field protected xM:Landroid/preference/CheckBoxPreference;

.field protected xN:Landroid/preference/CheckBoxPreference;

.field private xO:Landroid/preference/Preference;

.field private xP:Landroid/preference/CheckBoxPreference;

.field private xQ:Lcom/android/settings/DefaultRingtonePreference;

.field protected xR:Landroid/preference/ListPreference;

.field private xS:Ljava/lang/Runnable;

.field private xT:Landroid/preference/Preference;

.field private xU:Landroid/preference/CheckBoxPreference;

.field private xV:Landroid/content/Intent;

.field private xW:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sms_received_sound"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sms_delivered_sound"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->xJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 133
    new-instance v0, Lcom/android/settings/gy;

    invoke-direct {v0, p0}, Lcom/android/settings/gy;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/settings/gz;

    invoke-direct {v0, p0}, Lcom/android/settings/gz;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v0, Lcom/android/settings/gB;

    invoke-direct {v0, p0}, Lcom/android/settings/gB;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mp:Lcom/android/settings/eN;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->sl:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/SoundSettings;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->l(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SoundSettings;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/settings/SoundSettings;->mn:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xQ:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->dT()V

    return-void
.end method

.method private dM()Z
    .locals 2

    .prologue
    .line 333
    const-string v0, "support_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private dT()V
    .locals 3

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    invoke-virtual {v1}, Lcom/android/settings/eM;->getDsOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    invoke-virtual {v1}, Lcom/android/settings/eM;->getSelectedProfile()I

    move-result v1

    .line 379
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    invoke-virtual {v2}, Lcom/android/settings/eM;->fI()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 380
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    invoke-virtual {v2}, Lcom/android/settings/eM;->fH()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 382
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 385
    :cond_2
    const v1, 0x7f090039

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 391
    :catch_2
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 393
    :catch_3
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 395
    :catch_4
    move-exception v0

    .line 396
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 397
    :catch_5
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 399
    :catch_6
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private gZ()V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->dM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/android/settings/eM;->fG()Lcom/android/settings/eM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    .line 323
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mp:Lcom/android/settings/eN;

    invoke-virtual {v0, v1}, Lcom/android/settings/eM;->a(Lcom/android/settings/eN;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/eM;->bindDsService(Landroid/content/Context;)Z

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v0, "dolby_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private ha()V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->xS:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    return-void
.end method

.method private hb()Z
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private hc()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 576
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->hb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xU:Landroid/preference/CheckBoxPreference;

    .line 578
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 579
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xU:Landroid/preference/CheckBoxPreference;

    const-string v0, "dock_sounds_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 581
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    .line 582
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 589
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 579
    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_sounds"

    invoke-virtual {p0, v2}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 587
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private hd()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 644
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    const v1, 0x7f090385

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 646
    const v1, 0x7f090386

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 647
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 648
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private l(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 595
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 598
    :goto_0
    iput-object p1, p0, Lcom/android/settings/SoundSettings;->xV:Landroid/content/Intent;

    .line 600
    if-eqz v3, :cond_6

    .line 603
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_1
    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 633
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 595
    goto :goto_0

    .line 611
    :cond_2
    const/4 v0, 0x3

    if-ne v3, v0, :cond_5

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 613
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 614
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 616
    const-string v0, "dock_audio_media_enabled"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    :cond_3
    const-string v0, "dock_audio_media_enabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xW:Landroid/preference/CheckBoxPreference;

    .line 621
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xW:Landroid/preference/CheckBoxPreference;

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 630
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 604
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/net/Uri;I)V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 566
    const v0, 0x7f09093a

    return v0
.end method

.method protected fy()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    .line 172
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 174
    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0f0001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x11090008

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "ring_volume"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_1
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    .line 192
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    const-string v0, "vibrate_when_ringing"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    :cond_2
    const-string v0, "dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    .line 200
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    const-string v0, "dtmf_tone"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v0, "sound_effects"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xL:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 205
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xL:Landroid/preference/CheckBoxPreference;

    const-string v0, "sound_effects_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    const-string v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xN:Landroid/preference/CheckBoxPreference;

    .line 208
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 209
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xN:Landroid/preference/CheckBoxPreference;

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 211
    const-string v0, "lock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xP:Landroid/preference/CheckBoxPreference;

    .line 212
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xP:Landroid/preference/CheckBoxPreference;

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->sl:Lcom/android/settings/DefaultRingtonePreference;

    .line 226
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xQ:Lcom/android/settings/DefaultRingtonePreference;

    .line 228
    const-string v0, "haptic_feedback_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xR:Landroid/preference/ListPreference;

    .line 229
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 230
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_5

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->xN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->xR:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    iput-object v5, p0, Lcom/android/settings/SoundSettings;->xR:Landroid/preference/ListPreference;

    .line 239
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 240
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->K(Ljava/lang/String;)V

    .line 256
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 258
    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 275
    sget-object v0, Lcom/android/settings/SoundSettings;->xJ:[Ljava/lang/String;

    array-length v1, v0

    :goto_5
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    .line 276
    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 277
    if-eqz v3, :cond_7

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move v0, v2

    .line 194
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 201
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 205
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 209
    goto/16 :goto_3

    :cond_c
    move v1, v2

    .line 213
    goto/16 :goto_4

    .line 283
    :cond_d
    new-instance v0, Lcom/android/settings/gA;

    invoke-direct {v0, p0}, Lcom/android/settings/gA;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->xS:Ljava/lang/Runnable;

    .line 302
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->hc()V

    .line 304
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->gZ()V

    .line 307
    const-string v0, "dirac_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_e

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/a/a/a;->isSupportDirac(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 310
    invoke-static {}, Lcom/miui/player/a/a/a;->yE()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 311
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 317
    :cond_e
    :goto_6
    return-void

    .line 314
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->hd()Landroid/app/Dialog;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->dM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mm:Lcom/android/settings/eM;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/eM;->unBindDsService(Landroid/content/Context;)V

    .line 437
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 438
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 427
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 551
    const-string v1, "emergency_tone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    const-string v1, "SoundSettings"

    const-string v2, "could not persist emergency tone setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 485
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 486
    goto :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 492
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xL:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 493
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 498
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 496
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_3

    :cond_7
    move v1, v2

    .line 498
    goto :goto_4

    .line 501
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xN:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_5

    .line 505
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_6

    .line 509
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xO:Landroid/preference/Preference;

    if-eq p2, v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 513
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xV:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xV:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 517
    :goto_7
    if-nez v0, :cond_e

    .line 518
    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 513
    goto :goto_7

    .line 520
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xV:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 522
    :goto_8
    if-eqz v0, :cond_10

    .line 523
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->xV:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 524
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 520
    goto :goto_8

    .line 528
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xT:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 529
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 530
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_11

    :goto_9
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    invoke-super {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_11
    move v1, v2

    .line 530
    goto :goto_9

    .line 536
    :cond_12
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xU:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_a

    .line 539
    :cond_14
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->xW:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->xW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_b
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_b
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 412
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 414
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->ha()V

    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->dM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->dT()V

    .line 423
    :cond_0
    return-void
.end method
