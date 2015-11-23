.class final Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final MN:Ljava/util/Collection;

.field private final Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private NA:S

.field private NB:Landroid/bluetooth/BluetoothClass;

.field private NC:Ljava/util/HashMap;

.field private final ND:Ljava/util/List;

.field private final NE:Ljava/util/List;

.field private NF:Z

.field private NG:Z

.field private NH:I

.field private NI:Z

.field private NJ:J

.field private NK:Z

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mName:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NE:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    .line 169
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 171
    iput-object p3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 172
    iput-object p4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    .line 174
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mp()V

    .line 175
    return-void
.end method

.method private a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ap(Z)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "No profiles. Maybe we will connect later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NI:Z

    .line 231
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 233
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    :cond_2
    move v0, v1

    move v1, v0

    .line 239
    goto :goto_1

    .line 233
    :cond_3
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->lD()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 242
    :cond_4
    if-nez v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mk()V

    goto :goto_0
.end method

.method private mC()V
    .locals 3

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    monitor-enter v1

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 676
    invoke-interface {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->lH()V

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    return-void
.end method

.method private mE()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_phonebook_permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    if-nez v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 759
    if-ne v1, v3, :cond_2

    .line 760
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 766
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 768
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 761
    :cond_2
    if-ne v1, v4, :cond_1

    .line 762
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_1
.end method

.method private mG()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-nez v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 802
    if-ne v1, v3, :cond_2

    .line 803
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 809
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 810
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 811
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 804
    :cond_2
    if-ne v1, v4, :cond_1

    .line 805
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_1
.end method

.method private mI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_reject"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    .line 829
    return-void
.end method

.method private mJ()V
    .locals 3

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_reject"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 834
    iget v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    if-nez v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 839
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 840
    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private mk()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 248
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ml()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    return-void

    .line 252
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NI:Z

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 255
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->lD()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private ml()Z
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mm()Z

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mp()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mr()V

    .line 368
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mu()V

    .line 369
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mv()Z

    .line 370
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mE()V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mG()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mI()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 375
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 376
    return-void
.end method

.method private mr()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 442
    :cond_0
    return-void
.end method

.method private mu()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NB:Landroid/bluetooth/BluetoothClass;

    .line 524
    return-void
.end method

.method private mv()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 528
    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 530
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NE:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NF:Z

    iget-object v6, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 546
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 664
    monitor-exit v1

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 136
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 141
    instance-of v0, p1, Lcom/android/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/PanProfile;->t(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NF:Z

    goto :goto_0

    .line 152
    :cond_3
    instance-of v0, p1, Lcom/android/settings/bluetooth/MapProfile;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 155
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NF:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PanProfile;->t(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 158
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NF:Z

    goto :goto_0
.end method

.method a(S)V
    .locals 1

    .prologue
    .line 474
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NA:S

    if-eq v0, p1, :cond_0

    .line 475
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NA:S

    .line 476
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 478
    :cond_0
    return-void
.end method

.method aC(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 400
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 406
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 408
    :cond_1
    return-void

    .line 404
    :cond_2
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method aU(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 612
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NK:Z

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->aV(I)V

    .line 614
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->aW(I)V

    .line 615
    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    .line 616
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mJ()V

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 621
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mj()V

    .line 627
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NK:Z

    .line 629
    :cond_2
    return-void

    .line 624
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NK:Z

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ao(Z)V

    goto :goto_0
.end method

.method aV(I)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 739
    const/4 v2, 0x0

    .line 740
    if-ne p1, v0, :cond_0

    .line 745
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 746
    return-void

    .line 742
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 743
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method aW(I)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 782
    const/4 v2, 0x0

    .line 783
    if-ne p1, v0, :cond_0

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 789
    return-void

    .line 785
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 786
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method ao(Z)V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ml()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NJ:J

    .line 205
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ap(Z)V

    goto :goto_0
.end method

.method aq(Z)V
    .locals 0

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NG:Z

    .line 466
    return-void
.end method

.method b(Landroid/bluetooth/BluetoothClass;)V
    .locals 1

    .prologue
    .line 632
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NB:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 633
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NB:Landroid/bluetooth/BluetoothClass;

    .line 634
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 636
    :cond_0
    return-void
.end method

.method b(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->MN:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 670
    monitor-exit v1

    .line 671
    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method

.method c(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NJ:J

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NI:Z

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 274
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->e(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method declared-synchronized d(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ml()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 287
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method disconnect()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nn()Lcom/android/settings/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PbapServerProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 189
    :cond_1
    return-void
.end method

.method public e(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    sub-int/2addr v0, v3

    .line 705
    if-eqz v0, :cond_3

    .line 721
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 704
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 708
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_4
    sub-int/2addr v0, v3

    .line 710
    if-nez v0, :cond_0

    .line 713
    iget-boolean v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v3, :cond_7

    :goto_6
    sub-int/2addr v0, v1

    .line 714
    if-nez v0, :cond_0

    .line 717
    iget-short v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NA:S

    iget-short v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NA:S

    sub-int/2addr v0, v1

    .line 718
    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 708
    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v0, v2

    .line 713
    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6
.end method

.method e(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 688
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 691
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 385
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 387
    :goto_0
    return-object v0

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isConnected()Z
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 493
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->e(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 494
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 499
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemovable()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NG:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method mA()Ljava/util/List;
    .locals 4

    .prologue
    .line 647
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 650
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    :cond_1
    return-object v1
.end method

.method mB()Ljava/util/List;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NE:Ljava/util/List;

    return-object v0
.end method

.method mD()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 729
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    .line 730
    if-ne v2, v0, :cond_0

    .line 735
    :goto_0
    return v0

    .line 732
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 733
    goto :goto_0

    .line 735
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mF()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 772
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v2

    .line 773
    if-ne v2, v0, :cond_0

    .line 778
    :goto_0
    return v0

    .line 775
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 776
    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mH()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 818
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    if-ge v0, v1, :cond_0

    .line 819
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    .line 820
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mJ()V

    .line 822
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NH:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mj()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ao(Z)V

    .line 212
    return-void
.end method

.method mm()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mW()V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 308
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NK:Z

    goto :goto_0
.end method

.method mn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 323
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 327
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 329
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    .line 331
    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 334
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->aq(Z)V

    .line 343
    :cond_1
    return-void
.end method

.method public mo()V
    .locals 4

    .prologue
    .line 358
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Clearing all connection state for dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 361
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NC:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method mq()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mr()V

    .line 432
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 433
    return-void
.end method

.method ms()S
    .locals 1

    .prologue
    .line 482
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NA:S

    return v0
.end method

.method mt()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 509
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->e(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 511
    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 516
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method mw()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mu()V

    .line 555
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 556
    return-void
.end method

.method mx()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 562
    const-string v0, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onUuidChanged, mProfile Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 566
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mv()Z

    .line 571
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "UUID not udpated, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 607
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 577
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 578
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 585
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 586
    const-wide/16 v2, 0x1388

    .line 596
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v0, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    const-wide/16 v2, 0x7530

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NJ:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 604
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ap(Z)V

    .line 606
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    goto :goto_0
.end method

.method my()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->NB:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method mz()Ljava/util/List;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ND:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 446
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 426
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 428
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 460
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mC()V

    .line 462
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
