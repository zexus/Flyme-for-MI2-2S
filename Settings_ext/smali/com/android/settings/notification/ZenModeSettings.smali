.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field private static final agn:Ljava/text/SimpleDateFormat;

.field private static final ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

.field public static final gG:Lcom/android/settings/search/l;


# instance fields
.field private Wr:Landroid/service/notification/ZenModeConfig;

.field private aeB:Landroid/preference/Preference;

.field private aea:Landroid/content/pm/PackageManager;

.field private aep:Z

.field private aeu:Lcom/android/settings/notification/DropDownPreference;

.field private agA:Landroid/preference/PreferenceCategory;

.field private agB:Landroid/preference/Preference;

.field private final agt:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

.field private agu:Landroid/preference/SwitchPreference;

.field private agv:Landroid/preference/SwitchPreference;

.field private agw:Landroid/preference/SwitchPreference;

.field private agx:Landroid/preference/Preference;

.field private agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

.field private agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 87
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->agn:Ljava/text/SimpleDateFormat;

    .line 540
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$14;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettings$14;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->gG:Lcom/android/settings/search/l;

    return-void

    .line 87
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agt:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    .line 650
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeSettings;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aep:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method private static bh(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 107
    const v1, 0x7f0909f3

    const-string v2, "important"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    invoke-static {p0}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const v1, 0x7f0909fb

    const-string v2, "phone_calls"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    const v1, 0x7f0909c1

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    :goto_0
    const v1, 0x7f0909fc

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    const v1, 0x7f090a00

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    const v1, 0x7f090a01

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    const v1, 0x7f090a02

    const-string v2, "alarm_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    const v1, 0x7f0909f4

    const-string v2, "downtime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const v1, 0x7f0909f5

    const-string v2, "days"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    const v1, 0x7f090a07

    const-string v2, "start_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    const v1, 0x7f090a08

    const-string v2, "end_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    const v1, 0x7f0909f7

    const-string v2, "automation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    const v1, 0x7f0909e2

    const-string v2, "manage_condition_providers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    return-object v0

    .line 112
    :cond_0
    const v1, 0x7f0909c2

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic bi(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings;->bh(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qT()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qB()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/notification/ZenModeSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 3

    .prologue
    .line 467
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 470
    :try_start_0
    invoke-interface {v0}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "ZenModeSettings"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->oS()V

    return-void
.end method

.method private oR()V
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aep:Z

    .line 380
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agu:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agu:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agv:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->n(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agw:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 386
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qV()V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qT()V

    .line 388
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->m(II)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->m(II)V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aep:Z

    .line 391
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qB()V

    .line 392
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qU()V

    .line 393
    return-void
.end method

.method private oS()V
    .locals 3

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 462
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZenModeConfig mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->oR()V

    goto :goto_0
.end method

.method private qB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aeB:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aea:Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/android/settings/notification/ConditionProviderSettings;->d(Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 402
    if-nez v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agA:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/ConditionProviderSettings;->aY(Landroid/content/Context;)I

    move-result v0

    .line 406
    if-nez v0, :cond_3

    .line 407
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeB:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qW()Ljava/lang/String;

    move-result-object v1

    .line 415
    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agB:Landroid/preference/Preference;

    const v1, 0x7f0909fa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeB:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agB:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private qT()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v3

    .line 344
    if-eqz v3, :cond_4

    array-length v0, v3

    if-eqz v0, :cond_4

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move v0, v1

    .line 347
    :goto_0
    sget-object v2, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agm:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 348
    sget-object v2, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agm:[I

    aget v6, v2, v0

    move v2, v1

    .line 349
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_1

    .line 350
    aget v7, v3, v2

    if-ne v6, v7, :cond_2

    .line 351
    const/4 v2, 0x7

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0909f9

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    sget-object v2, Lcom/android/settings/notification/ZenModeSettings;->agn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 361
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 369
    :goto_2
    return-void

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    const v1, 0x7f0909f6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private qU()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int/2addr v0, v2

    .line 373
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int/2addr v2, v3

    .line 374
    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    .line 375
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    const v1, 0x7f090a09

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->ch(I)V

    .line 376
    return-void

    :cond_1
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method private qV()V
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 397
    return-void

    .line 396
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qW()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 425
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 428
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    const v1, 0x7f0909f9

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_3

    .line 435
    if-lez v1, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_2
    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling getAutomaticZenModeConditions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic qX()Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4

    .prologue
    .line 478
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 481
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    .line 482
    if-eqz v0, :cond_0

    .line 483
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 484
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saved mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qU()V

    .line 486
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->qV()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    const-string v1, "ZenModeSettings"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected ce(I)V
    .locals 6

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/android/settings/notification/ZenModeConditionSelection;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 504
    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$11;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/ZenModeSettings$11;-><init>(Lcom/android/settings/notification/ZenModeSettings;Lcom/android/settings/notification/ZenModeConditionSelection;)V

    .line 511
    sget-object v2, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->bj(Landroid/content/Context;)I

    move-result v2

    .line 512
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f09016c

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09016a

    new-instance v3, Lcom/android/settings/notification/ZenModeSettings$13;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/notification/ZenModeSettings$13;-><init>(Lcom/android/settings/notification/ZenModeSettings;I)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$12;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/ZenModeSettings$12;-><init>(Lcom/android/settings/notification/ZenModeSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 530
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected cf(I)V
    .locals 2

    .prologue
    .line 535
    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->j(Landroid/content/Context;I)Z

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 537
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aea:Landroid/content/pm/PackageManager;

    .line 152
    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 155
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    .line 156
    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded mConfig="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->Wr:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v0, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->c(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/android/settings/notification/ZenModeSettings;->ags:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v3, Lcom/android/settings/notification/ZenModeSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeSettings$2;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->a(Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const v1, 0x7f0909c2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 171
    :cond_0
    const-string v0, "important"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 174
    const-string v1, "phone_calls"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agu:Landroid/preference/SwitchPreference;

    .line 175
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/hl;->M(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agu:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeSettings$3;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    :goto_0
    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agv:Landroid/preference/SwitchPreference;

    .line 194
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agv:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeSettings$4;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    .line 208
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v3, 0x7f0909fe

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v3, 0x7f090a00

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    const v3, 0x7f0909ff

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/notification/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeSettings$5;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/DropDownPreference;->a(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->aeu:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 226
    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agw:Landroid/preference/SwitchPreference;

    .line 227
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agw:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeSettings$6;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 240
    const-string v0, "downtime"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 242
    const-string v1, "days"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    .line 243
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeSettings$7;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 273
    new-instance v2, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    .line 274
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const v3, 0x7f090a07

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeSettings$8;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->a(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 292
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agy:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 295
    new-instance v2, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    .line 296
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    const v2, 0x7f090a08

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeSettings$9;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->a(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 315
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agz:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agx:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 317
    const-string v0, "automation"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agA:Landroid/preference/PreferenceCategory;

    .line 318
    const-string v0, "entry"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agB:Landroid/preference/Preference;

    .line 319
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agB:Landroid/preference/Preference;

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeSettings$10;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 336
    const-string v0, "manage_condition_providers"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->aeB:Landroid/preference/Preference;

    .line 338
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->oR()V

    .line 339
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agu:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->agu:Landroid/preference/SwitchPreference;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agt:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;->unregister()V

    .line 456
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->oR()V

    .line 449
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->agt:Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SettingsObserver;->register()V

    .line 450
    return-void
.end method
