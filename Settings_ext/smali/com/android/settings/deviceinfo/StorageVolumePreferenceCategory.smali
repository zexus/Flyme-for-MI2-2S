.class public Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# instance fields
.field private final TM:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

.field private TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

.field private TO:Landroid/preference/Preference;

.field private TP:Landroid/preference/Preference;

.field private TQ:Landroid/preference/Preference;

.field private TR:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TT:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TU:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TV:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TW:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TY:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

.field private TZ:Ljava/util/List;

.field private final Tp:Landroid/os/storage/StorageVolume;

.field private Ts:J

.field private Ua:Ljava/lang/String;

.field private Ub:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUserManager:Landroid/os/UserManager;

.field private final pb:Landroid/os/storage/StorageManager;

.field private pm:Landroid/os/Handler;

.field private yn:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TZ:Ljava/util/List;

    .line 94
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->pm:Landroid/os/Handler;

    .line 571
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ub:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 131
    iput-object p2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    .line 132
    invoke-static {p1, p2}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TM:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 135
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->pb:Landroid/os/storage/StorageManager;

    .line 136
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 138
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 138
    :cond_0
    const-string v0, "support_internal_sdcard"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090bab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f090549

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs a(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 475
    const-wide/16 v2, 0x0

    .line 476
    array-length v5, p1

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 479
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 476
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 484
    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private a(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 648
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 649
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v3, :cond_0

    .line 651
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 654
    :cond_1
    return-object v1
.end method

.method private a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V
    .locals 6

    .prologue
    .line 523
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 524
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p1}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ts:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->b(IFI)V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private a(Landroid/os/Environment$UserEnvironment;)Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aw(Landroid/content/Context;)Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->pm:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private g(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TM:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->invalidate()V

    .line 534
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TM:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->measure()V

    .line 535
    return-void
.end method

.method private oq()V
    .locals 9

    .prologue
    const v2, 0x7f09041a

    const v1, 0x7f090413

    const v3, 0x7f090409

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 336
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->pb:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    const-string v0, "mounted_ro"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v6, 0x7f0903fc

    invoke-virtual {v0, v6}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_2
    :goto_1
    const-string v0, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mounted_ro"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 358
    const v1, 0x7f09040f

    .line 359
    const v0, 0x7f090410

    .line 370
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 371
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 427
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->yn:Z

    if-eqz v0, :cond_12

    const-string v0, "mtp"

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ptp"

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 430
    const-string v0, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "mounted_ro"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 432
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 350
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v6, 0x7f0903fb

    invoke-virtual {v0, v6}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 361
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    const v1, 0x7f090416

    .line 363
    const v0, 0x7f090417

    goto :goto_2

    .line 366
    :cond_a
    const v1, 0x7f090406

    .line 367
    const v0, 0x7f090407

    goto :goto_2

    .line 379
    :cond_b
    const-string v0, "unmounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "nofs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "unmountable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 381
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 385
    const v0, 0x7f090414

    .line 396
    :goto_4
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    :goto_5
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TR:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 387
    :cond_d
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 389
    const v0, 0x7f09041b

    move v1, v2

    goto :goto_4

    .line 393
    :cond_e
    const v0, 0x7f09040a

    move v1, v3

    goto :goto_4

    .line 400
    :cond_f
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 404
    const v0, 0x7f090415

    .line 415
    :goto_6
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 406
    :cond_10
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 408
    const v0, 0x7f09041c

    move v1, v2

    goto :goto_6

    .line 412
    :cond_11
    const v0, 0x7f090408

    move v1, v3

    goto :goto_6

    .line 440
    :cond_12
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 444
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    const v1, 0x7f090412

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 446
    :cond_13
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v4}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 447
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    const v1, 0x7f090419

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 450
    :cond_14
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    const v1, 0x7f09040c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->yn:Z

    .line 549
    iput-object p2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ua:Ljava/lang/String;

    .line 550
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 551
    return-void
.end method

.method public b(JJ)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TR:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    iput-wide p1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ts:J

    .line 461
    sub-long v0, p1, p3

    .line 463
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->clear()V

    .line 466
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    long-to-float v0, v0

    long-to-float v1, p1

    div-float/2addr v0, v1

    invoke-virtual {v2, v5, v0, v5}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->b(IFI)V

    .line 467
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090ad0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->commit()V

    .line 471
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->oq()V

    .line 472
    return-void
.end method

.method public c(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 489
    :goto_0
    if-nez v0, :cond_2

    .line 520
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 488
    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TR:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    iget-wide v4, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tx:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    iget-wide v4, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Ty:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->clear()V

    .line 497
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TT:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    iget-wide v4, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->Tz:J

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    .line 499
    iget-object v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v4, v3, v2

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 501
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TU:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    .line 503
    iget-object v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v4, v3, v2

    sget-object v4, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 506
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TV:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    .line 508
    iget-object v0, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TA:Ljava/util/HashMap;

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v0

    .line 509
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TW:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    .line 511
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    iget-wide v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    .line 512
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TY:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    iget-wide v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TB:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    .line 514
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 515
    iget-object v2, p1, Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementDetails;->TC:Landroid/util/SparseLongArray;

    iget v3, v0, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 516
    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Lcom/android/settings_ext/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

.method public g(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 589
    const/4 v0, 0x0

    .line 594
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 619
    :cond_0
    :goto_0
    return-object v0

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TT:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_2

    .line 600
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/applications/ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TW:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TV:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 608
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TU:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 613
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TY:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 615
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ext/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 155
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 160
    invoke-direct {p0, v6}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v4

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 163
    :goto_0
    new-instance v3, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-direct {v3, v5}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    .line 164
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    const/4 v7, -0x2

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 165
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TN:Lcom/android/settings_ext/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    const v3, 0x7f0903fd

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TR:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 168
    const v3, 0x7f0903fb

    const v7, 0x7f08000d

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TS:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 178
    const v3, 0x7f0903ff

    const v7, 0x7f0201bb

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TT:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 179
    const v3, 0x7f090402

    const v7, 0x7f0201be

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TU:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 180
    const v3, 0x7f090403

    const v7, 0x7f0201bc

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TV:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 181
    const v3, 0x7f090401

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TW:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 182
    const v3, 0x7f090405

    const v7, 0x7f0201bd

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 183
    const v3, 0x7f090404

    const v7, 0x7f0201c1

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->i(II)Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TY:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    .line 184
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TT:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v7, 0x7f0201b9

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 185
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TU:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v7, 0x7f0201c3

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 186
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TV:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v7, 0x7f0201ba

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 187
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v7, 0x7f0201c2

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 188
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TY:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const v7, 0x7f0201c4

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setIcon(I)V

    .line 189
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setEnabled(Z)V

    .line 192
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    const-string v7, "cache"

    invoke-virtual {v3, v7}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v3, v1

    .line 195
    :goto_1
    if-eqz v3, :cond_5

    .line 196
    if-eqz v0, :cond_1

    .line 197
    new-instance v3, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v7, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 200
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TT:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 201
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TU:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 202
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TV:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TX:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TY:Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    if-eqz v0, :cond_5

    .line 209
    new-instance v0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v3, 0x7f090445

    invoke-direct {v0, v5, v3}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 213
    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    const v3, 0x7f080014

    .line 215
    :goto_3
    new-instance v8, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v9, v10, v3, v0}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TZ:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0, v8}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v3, v4

    .line 219
    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get current user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    .line 161
    goto/16 :goto_0

    :cond_3
    move v3, v2

    .line 194
    goto :goto_1

    .line 213
    :cond_4
    const v3, 0x7f080015

    goto :goto_3

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    .line 225
    :goto_4
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    .line 232
    if-eqz v0, :cond_6

    .line 235
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v5}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 236
    const v3, 0x7f09040f

    .line 237
    const v0, 0x7f090410

    .line 248
    :goto_5
    iget-object v4, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 249
    iget-object v3, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 251
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TO:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_d

    .line 255
    :goto_6
    if-eqz v1, :cond_7

    .line 256
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    .line 259
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v5}, Lcom/android/settings_ext/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 260
    const v1, 0x7f090411

    .line 261
    const v0, 0x7f090412

    .line 282
    :goto_7
    iget-object v2, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 283
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TP:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 292
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v5}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f090549

    invoke-virtual {v5, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f090bab

    invoke-virtual {v5, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 296
    :cond_8
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 300
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    const v1, 0x7f09043b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    const v1, 0x7f09043c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :cond_9
    :goto_8
    return-void

    :cond_a
    move v0, v2

    .line 223
    goto/16 :goto_4

    .line 239
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v5}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    const v3, 0x7f090416

    .line 241
    const v0, 0x7f090417

    goto/16 :goto_5

    .line 244
    :cond_c
    const v3, 0x7f090406

    .line 245
    const v0, 0x7f090407

    goto/16 :goto_5

    :cond_d
    move v1, v2

    .line 254
    goto/16 :goto_6

    .line 263
    :cond_e
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v5}, Lcom/android/settings_ext/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 264
    const v1, 0x7f090418

    .line 265
    const v0, 0x7f090419

    goto/16 :goto_7

    .line 271
    :cond_f
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 272
    invoke-direct {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->a(Landroid/os/Environment$UserEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 274
    const v1, 0x7f090c80

    .line 275
    const v0, 0x7f090c81

    goto/16 :goto_7

    .line 277
    :cond_10
    const v1, 0x7f09040b

    .line 278
    const v0, 0x7f09040c

    goto/16 :goto_7

    .line 303
    :cond_11
    :try_start_2
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    .line 304
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TQ:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 307
    :catch_1
    move-exception v0

    goto :goto_8
.end method

.method public oa()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 559
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TM:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 563
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->TM:Lcom/android/settings_ext/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Ub:Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/deviceinfo/StorageMeasurement;->a(Lcom/android/settings_ext/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 539
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 540
    return-void
.end method

.method public op()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->Tp:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public or()V
    .locals 0

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 544
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 545
    return-void
.end method

.method public os()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 555
    return-void
.end method
