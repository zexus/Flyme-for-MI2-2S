.class public Lcom/android/settings_ext/deviceinfo/Memory;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/android/settings_ext/search/k;


# static fields
.field private static RH:Landroid/preference/Preference;

.field private static RI:Ljava/lang/String;

.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private RJ:Landroid/os/storage/IMountService;

.field private final RK:Landroid/content/BroadcastReceiver;

.field private hE:Landroid/hardware/usb/UsbManager;

.field private mCategories:Ljava/util/ArrayList;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private oh:Landroid/os/storage/StorageVolume;

.field private pb:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Memory$6;

    invoke-direct {v0}, Lcom/android/settings_ext/deviceinfo/Memory$6;-><init>()V

    sput-object v0, Lcom/android/settings_ext/deviceinfo/Memory;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 89
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/Memory$1;-><init>(Lcom/android/settings_ext/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 276
    new-instance v0, Lcom/android/settings_ext/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/Memory$2;-><init>(Lcom/android/settings_ext/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RK:Landroid/content/BroadcastReceiver;

    .line 487
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/deviceinfo/Memory;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ext/deviceinfo/Memory;->bj(I)V

    return-void
.end method

.method private a(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 124
    invoke-virtual {p1}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 125
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/settings_ext/deviceinfo/Memory;->RI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->hE:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private bj(I)V
    .locals 0

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/deviceinfo/Memory;->removeDialog(I)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/deviceinfo/Memory;->showDialog(I)V

    .line 391
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->nW()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->oa()V

    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RJ:Landroid/os/storage/IMountService;

    if-nez v0, :cond_0

    .line 221
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    .line 223
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RJ:Landroid/os/storage/IMountService;

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RJ:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 225
    :cond_1
    :try_start_1
    const-string v0, "MemorySettings"

    const-string v1, "Can\'t get mount service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private nV()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nW()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090423

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/android/settings_ext/deviceinfo/Memory;->RH:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 364
    sget-object v1, Lcom/android/settings_ext/deviceinfo/Memory;->RH:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    sget-object v1, Lcom/android/settings_ext/deviceinfo/Memory;->RH:Landroid/preference/Preference;

    const v2, 0x7f090439

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    sget-object v1, Lcom/android/settings_ext/deviceinfo/Memory;->RH:Landroid/preference/Preference;

    const v2, 0x7f09043a

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    :cond_0
    new-instance v1, Lcom/android/settings_ext/deviceinfo/Memory$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory$4;-><init>(Lcom/android/settings_ext/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settings_ext/deviceinfo/Memory$4;->start()V

    .line 386
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090438

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private nX()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 394
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 395
    sget-object v1, Lcom/android/settings_ext/deviceinfo/Memory;->RI:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 410
    :cond_0
    return v2
.end method

.method private nY()V
    .locals 2

    .prologue
    .line 416
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->nX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory;->bj(I)V

    .line 427
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->nW()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 424
    const-string v0, "MemorySettings"

    const-string v1, "Is MountService running?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory;->bj(I)V

    goto :goto_0
.end method

.method private nZ()V
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/android/settings_ext/deviceinfo/Memory$5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory$5;-><init>(Lcom/android/settings_ext/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settings_ext/deviceinfo/Memory$5;->start()V

    .line 457
    return-void
.end method

.method private oa()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    .line 461
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->oa()V

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 97
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->hE:Landroid/hardware/usb/UsbManager;

    .line 99
    invoke-static {v2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 102
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 104
    invoke-static {v2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->aw(Landroid/content/Context;)Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory;->a(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 107
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 110
    const-string v6, "ro.boot.sdcard.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "support_internal_sdcard"

    invoke-static {v7, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "mixed"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    :cond_0
    invoke-static {v2, v5}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->b(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ext/deviceinfo/Memory;->a(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 119
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const v5, 0x7f09054e

    const/4 v2, 0x0

    .line 297
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 340
    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    const v1, 0x7f090434

    .line 300
    const v0, 0x7f090435

    .line 303
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    const v1, 0x7f09041d

    .line 305
    const v0, 0x7f09041f

    .line 312
    :cond_0
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings_ext/deviceinfo/Memory$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/deviceinfo/Memory$3;-><init>(Lcom/android/settings_ext/deviceinfo/Memory;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f090169

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const v1, 0x7f09041e

    .line 309
    const v0, 0x7f090420

    goto :goto_1

    .line 324
    :pswitch_1
    const v0, 0x7f090437

    .line 327
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    const v0, 0x7f090421

    .line 334
    :cond_2
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090436

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const v0, 0x7f090422

    goto :goto_2

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 181
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/gh;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gh;

    const-class v1, Lcom/android/settings_ext/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09043e

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 214
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const-class v0, Lcom/android/settings_ext/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ext/deviceinfo/Memory;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x7f1003a2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RK:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    .line 171
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 233
    const-string v0, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p0}, Lcom/android/settings_ext/deviceinfo/Memory$ConfirmClearCacheFragment;->e(Lcom/android/settings_ext/deviceinfo/Memory;)V

    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    .line 239
    invoke-virtual {v0, p2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->h(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_3

    .line 242
    invoke-static {}, Lcom/android/settings_ext/hl;->hr()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    instance-of v0, p2, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_2

    .line 247
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v1

    .line 253
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v0, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for intent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->op()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 257
    if-eqz v3, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    sput-object p2, Lcom/android/settings_ext/deviceinfo/Memory;->RH:Landroid/preference/Preference;

    .line 259
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/deviceinfo/Memory;->RI:Ljava/lang/String;

    .line 260
    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/Memory;->oh:Landroid/os/storage/StorageVolume;

    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->pb:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->nY()V

    :goto_2
    move v0, v1

    .line 269
    goto :goto_0

    .line 267
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->nZ()V

    goto :goto_2

    .line 273
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 190
    const v0, 0x7f1003a2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->nV()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 194
    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RK:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/Memory;->RK:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    .line 147
    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method
