.class public Lcom/android/settings/notification/MiuiZenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# instance fields
.field private WM:Landroid/preference/CheckBoxPreference;

.field private Wr:Landroid/service/notification/ZenModeConfig;

.field private Wx:Landroid/preference/PreferenceScreen;

.field private aeA:Landroid/preference/PreferenceCategory;

.field private aeB:Landroid/preference/Preference;

.field private aea:Landroid/content/pm/PackageManager;

.field private final aen:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

.field private aeo:Landroid/os/SystemVibrator;

.field private aep:Z

.field private aeq:Landroid/preference/CheckBoxPreference;

.field private aer:Landroid/preference/CheckBoxPreference;

.field private aes:Landroid/preference/CheckBoxPreference;

.field private aet:Landroid/preference/CheckBoxPreference;

.field private aeu:Lcom/android/settings/notification/DropDownPreference;

.field private aev:Landroid/preference/CheckBoxPreference;

.field private aew:Lcom/android/settings/dndmode/LabelPreference;

.field private aex:Lcom/android/settings/dndmode/LabelPreference;

.field private aey:Landroid/preference/PreferenceCategory;

.field private aez:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aen:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    .line 415
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/notification/MiuiZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/MiuiZenModeSettings;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aep:Z

    return v0
.end method

.method private bZ(I)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aez:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aez:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    .prologue
    .line 367
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 370
    :try_start_0
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v1, "ZenModeSettings"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->oS()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->oR()V

    return-void
.end method

.method private oR()V
    .locals 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aep:Z

    .line 284
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeq:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aer:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeo:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aes:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aet:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aev:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->n(Ljava/lang/Object;)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aep:Z

    .line 293
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->qB()V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->qA()V

    .line 295
    return-void
.end method

.method private oS()V
    .locals 3

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 363
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZenModeConfig mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private oU()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v6

    const-string v3, "type=\'3\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 404
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 405
    if-eqz v1, :cond_0

    .line 407
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 412
    :goto_0
    return v0

    .line 409
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v6

    .line 412
    goto :goto_0
.end method

.method private qA()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a98

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a99

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a9a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a9b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a9c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a9d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_6

    .line 311
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a9e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f090a9f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private qB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeB:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aea:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/settings/notification/ConditionProviderSettings;->d(Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 320
    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/ConditionProviderSettings;->aY(Landroid/content/Context;)I

    move-result v0

    .line 324
    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeB:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0909e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeB:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000b

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

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4

    .prologue
    .line 378
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 381
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 384
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    const-string v1, "ZenModeSettings"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aea:Landroid/content/pm/PackageManager;

    .line 100
    new-instance v0, Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeo:Landroid/os/SystemVibrator;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "switch"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->addPreferencesFromResource(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    .line 105
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 106
    const-string v0, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    const-string v2, "alarm_use"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    const-string v2, "alarm_content"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aex:Lcom/android/settings/dndmode/LabelPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$1;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    const-string v2, "miui_silent_category"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    const-string v2, "allow_music"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeq:Landroid/preference/CheckBoxPreference;

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeq:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$2;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    const-string v2, "allow_alarm"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aer:Landroid/preference/CheckBoxPreference;

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aer:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$3;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    const-string v2, "allow_vibrate"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aes:Landroid/preference/CheckBoxPreference;

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeo:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aes:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$4;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    const-string v2, "allow_light"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aet:Landroid/preference/CheckBoxPreference;

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aet:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$5;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    const-string v2, "starred"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    .line 194
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f0909fe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f090a00

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f0909ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v2, 0x7f090a84

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$6;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->a(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->Wx:Landroid/preference/PreferenceScreen;

    const-string v2, "key_auto_setting_group"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aez:Landroid/preference/PreferenceCategory;

    .line 213
    const-string v0, "key_auto_button"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->WM:Landroid/preference/CheckBoxPreference;

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->WM:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$7;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->WM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    :goto_1
    const-string v0, "manage_condition_providers"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeB:Landroid/preference/Preference;

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    const-string v2, "repeat"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aev:Landroid/preference/CheckBoxPreference;

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aev:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$8;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    const-string v2, "vip"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aew:Lcom/android/settings/dndmode/LabelPreference;

    .line 246
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aew:Lcom/android/settings/dndmode/LabelPreference;

    new-instance v2, Lcom/android/settings/notification/MiuiZenModeSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$9;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aew:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a81

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->oU()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 264
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->oR()V

    .line 265
    invoke-direct {p0, v1}, Lcom/android/settings/notification/MiuiZenModeSettings;->bZ(I)V

    .line 266
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aey:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->WM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aeA:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aew:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 356
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aen:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->unregister()V

    .line 357
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->oR()V

    .line 346
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aen:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->register()V

    .line 347
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->aew:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a81

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->oU()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method
