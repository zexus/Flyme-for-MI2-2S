.class public Lcom/android/settings_ext/notification/NotificationSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings_ext/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ext/notification/NotificationSettings$Receiver;,
        Lcom/android/settings_ext/notification/NotificationSettings$H;,
        Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ext/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings_ext/notification/NotificationSettings$H;

.field private mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/settings_ext/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ext/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 602
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ext/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ext/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;Lcom/android/settings_ext/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    .line 85
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;Lcom/android/settings_ext/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mHandler:Lcom/android/settings_ext/notification/NotificationSettings$H;

    .line 86
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    .line 87
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;Lcom/android/settings_ext/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ext/notification/NotificationSettings$Receiver;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingerMode:I

    .line 289
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationSettings$1;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 573
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ext/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ext/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mHandler:Lcom/android/settings_ext/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/android/settings_ext/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ext/notification/NotificationSettings;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 230
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 231
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 233
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 243
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v4, 0x7f090971

    const v3, 0x7f090970

    const v2, 0x7f09096f

    .line 420
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    .line 421
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 422
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 428
    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 434
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings_ext/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/NotificationSettings$4;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->setCallback(Lcom/android/settings_ext/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 383
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 385
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updatePulse()V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ext/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/NotificationSettings$3;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 277
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 282
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 283
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 351
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 352
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 353
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 363
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ext/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/NotificationSettings$2;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 192
    .local v0, "volumePref":Lcom/android/settings_ext/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;)V

    .line 193
    invoke-virtual {v0, p2}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 194
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v0, p3}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 196
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 479
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 481
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 484
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 485
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 486
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090981

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100008

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 216
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 218
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 219
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x10406b1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 224
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 219
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 464
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 459
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 460
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f090971

    :goto_2
    iput v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 463
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ext/notification/DropDownPreference;

    iget v3, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 460
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f09096f

    goto :goto_2

    :cond_4
    const v2, 0x7f090970

    goto :goto_2
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 406
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x108031f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 205
    return-void

    .line 200
    :cond_0
    iget v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x1080320

    goto :goto_0

    :cond_1
    const v0, 0x108031e

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 209
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iput v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingerMode:I

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 310
    if-nez p0, :cond_1

    .line 311
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    :goto_0
    return-object v7

    .line 314
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 315
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 318
    const v0, 0x10404ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 320
    :cond_2
    const/4 v6, 0x0

    .line 322
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 340
    :cond_4
    if-eqz v6, :cond_0

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 326
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 335
    :catch_0
    move-exception v0

    .line 340
    if-eqz v6, :cond_0

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 340
    if-eqz v6, :cond_0

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x108031f

    const/4 v8, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 113
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 114
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings_ext/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    .line 115
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSecure:Z

    .line 117
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 119
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 123
    :cond_0
    const v5, 0x7f060026

    invoke-virtual {p0, v5}, Lcom/android/settings_ext/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 125
    const-string v5, "sound"

    invoke-virtual {p0, v5}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 126
    .local v4, "sound":Landroid/preference/PreferenceCategory;
    const-string v5, "media_volume"

    const/4 v6, 0x3

    const v7, 0x1080322

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ext/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 128
    const-string v5, "alarm_volume"

    const/4 v6, 0x4

    const v7, 0x1080313

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings_ext/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 130
    const-string v5, "musicfx"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mMusicFx:Landroid/preference/Preference;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "effects":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, "p":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v5, :cond_3

    .line 142
    const-string v5, "ring_volume"

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6, v9}, Lcom/android/settings_ext/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 145
    const-string v5, "notification_volume"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/settings_ext/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 153
    invoke-direct {p0, v4}, Lcom/android/settings_ext/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 155
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 157
    .local v1, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 158
    invoke-direct {p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 160
    const-string v5, "manage_notification_access"

    invoke-virtual {p0, v5}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateRingerMode()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 164
    return-void

    .line 137
    .end local v1    # "notification":Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 138
    iget-object v6, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_3
    const-string v5, "notification_volume"

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6, v9}, Lcom/android/settings_ext/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 150
    const-string v5, "ring_volume"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ext/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$Receiver;->register(Z)V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 171
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ext/notification/NotificationSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/notification/NotificationSettings$Receiver;->register(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 175
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 176
    .local v1, "volumePref":Lcom/android/settings_ext/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 178
    .end local v1    # "volumePref":Lcom/android/settings_ext/notification/VolumeSeekBarPreference;
    :cond_0
    return-void
.end method
