.class public Lcom/android/settings_ext/notification/NotificationSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings_ext/search/k;


# static fields
.field public static final afm:Lcom/android/settings_ext/search/a;


# instance fields
.field private aea:Landroid/content/pm/PackageManager;

.field private final afa:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

.field private final afb:Lcom/android/settings_ext/notification/NotificationSettings$H;

.field private final afc:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

.field private afd:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

.field private afe:Landroid/preference/Preference;

.field private aff:Landroid/preference/Preference;

.field private afg:Landroid/preference/TwoStatePreference;

.field private afh:Landroid/preference/TwoStatePreference;

.field private afi:Lcom/android/settings_ext/notification/DropDownPreference;

.field private afj:Z

.field private afk:I

.field private final afl:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mVoiceCapable:Z

.field private sK:Landroid/os/Vibrator;

.field private wy:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ext/notification/NotificationSettings;->afm:Lcom/android/settings_ext/search/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;Lcom/android/settings_ext/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afa:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    .line 76
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;Lcom/android/settings_ext/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afb:Lcom/android/settings_ext/notification/NotificationSettings$H;

    .line 77
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afc:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    .line 212
    new-instance v0, Lcom/android/settings_ext/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationSettings$1;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afl:Ljava/lang/Runnable;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/NotificationSettings;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afk:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$H;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afb:Lcom/android/settings_ext/notification/NotificationSettings$H;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceCategory;)V
    .locals 1

    .prologue
    .line 200
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afe:Landroid/preference/Preference;

    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afe:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afe:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afe:Landroid/preference/Preference;

    .line 205
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->aff:Landroid/preference/Preference;

    .line 206
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afe:Landroid/preference/Preference;

    return-object v0
.end method

.method private b(Landroid/preference/PreferenceCategory;)V
    .locals 2

    .prologue
    .line 274
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    .line 275
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 276
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 285
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qI()V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ext/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/NotificationSettings$2;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/NotificationSettings;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ext/notification/NotificationSettings;->ca(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/preference/PreferenceCategory;)V
    .locals 2

    .prologue
    .line 306
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afh:Landroid/preference/TwoStatePreference;

    .line 307
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afh:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 308
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afh:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qJ()V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afh:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ext/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/NotificationSettings$3;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private ca(I)V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afd:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    const v0, 0x7f020245

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->cc(I)V

    .line 164
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->sK:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    const v0, 0x7f020246

    goto :goto_0

    :cond_1
    const v0, 0x7f020247

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->aff:Landroid/preference/Preference;

    return-object v0
.end method

.method private d(Landroid/preference/PreferenceCategory;)V
    .locals 5

    .prologue
    const v4, 0x7f0909ce

    const v3, 0x7f0909cd

    const v2, 0x7f0909cc

    .line 343
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    .line 344
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 351
    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afj:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 357
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qK()V

    .line 358
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings_ext/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/NotificationSettings$4;-><init>(Lcom/android/settings_ext/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->a(Lcom/android/settings_ext/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/notification/NotificationSettings;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afk:I

    return v0
.end method

.method private static g(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 233
    if-nez p0, :cond_1

    .line 234
    const-string v0, "NotificationSettings"

    const-string v1, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 238
    const v0, 0x10404b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    if-nez v1, :cond_2

    .line 241
    const v0, 0x10404b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_2
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
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

    move-result-object v7

    .line 253
    :cond_3
    :goto_1
    if-eqz v7, :cond_7

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v0, v6

    .line 263
    :goto_2
    if-eqz v7, :cond_0

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 249
    :cond_4
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
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

    move-result-object v7

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    .line 263
    if-eqz v7, :cond_6

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 263
    if-eqz v7, :cond_6

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    move-object v0, v6

    goto/16 :goto_0

    :cond_7
    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic h(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/settings_ext/notification/NotificationSettings;->g(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private ha()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afl:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method static synthetic i(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings_ext/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qI()V

    return-void
.end method

.method private l(Ljava/lang/String;I)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 153
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afa:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->a(Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;)V

    .line 154
    invoke-virtual {v0, p2}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->cb(I)V

    .line 155
    return-object v0
.end method

.method static synthetic l(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qJ()V

    return-void
.end method

.method static synthetic m(Lcom/android/settings_ext/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qK()V

    return-void
.end method

.method static synthetic n(Lcom/android/settings_ext/notification/NotificationSettings;)Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afa:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method private qI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afg:Landroid/preference/TwoStatePreference;

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

.method private qJ()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 329
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afh:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afh:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v0, "NotificationSettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private qK()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qt()Z

    move-result v1

    .line 382
    iget-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afj:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qu()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 383
    :goto_1
    if-nez v1, :cond_3

    const v0, 0x7f0909ce

    :goto_2
    iput v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afk:I

    .line 386
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afi:Lcom/android/settings_ext/notification/DropDownPreference;

    iget v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/DropDownPreference;->n(Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 383
    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f0909cc

    goto :goto_2

    :cond_4
    const v0, 0x7f0909cd

    goto :goto_2
.end method

.method private qL()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->wy:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->aea:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->e(Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 404
    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->wy:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->aZ(Landroid/content/Context;)I

    move-result v0

    .line 408
    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->wy:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->wy:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private qt()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 390
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

.method private qu()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 395
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


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->aea:Landroid/content/pm/PackageManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ext/hl;->M(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    .line 101
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afj:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->sK:Landroid/os/Vibrator;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->sK:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->sK:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->sK:Landroid/os/Vibrator;

    .line 108
    :cond_0
    const v0, 0x7f060055

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 110
    const-string v0, "sound"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 111
    const-string v1, "media_volume"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/notification/NotificationSettings;->l(Ljava/lang/String;I)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 112
    const-string v1, "alarm_volume"

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/notification/NotificationSettings;->l(Ljava/lang/String;I)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 113
    iget-boolean v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "ring_volume"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/notification/NotificationSettings;->l(Ljava/lang/String;I)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afd:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 116
    const-string v1, "notification_volume"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->a(Landroid/preference/PreferenceCategory;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->b(Landroid/preference/PreferenceCategory;)V

    .line 125
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 127
    invoke-direct {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->c(Landroid/preference/PreferenceCategory;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->d(Landroid/preference/PreferenceCategory;)V

    .line 130
    const-string v0, "manage_notification_access"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->wy:Landroid/preference/Preference;

    .line 131
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qL()V

    .line 132
    return-void

    .line 118
    :cond_1
    const-string v1, "notification_volume"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ext/notification/NotificationSettings;->l(Ljava/lang/String;I)Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afd:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    .line 120
    const-string v1, "ring_volume"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afa:Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings_ext/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afc:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->aI(Z)V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->qL()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationSettings;->ha()V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationSettings;->afc:Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/NotificationSettings$SettingsObserver;->aI(Z)V

    .line 140
    return-void
.end method
