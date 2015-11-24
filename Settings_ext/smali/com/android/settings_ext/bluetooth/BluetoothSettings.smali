.class public Lcom/android/settings_ext/bluetooth/BluetoothSettings;
.super Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings_ext/search/k;


# static fields
.field private static Nh:Landroid/view/View;

.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field protected Ni:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

.field Nj:Landroid/preference/CheckBoxPreference;

.field Nk:Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;

.field private Nl:Landroid/preference/PreferenceGroup;

.field private Nm:Landroid/preference/PreferenceGroup;

.field private Nn:Z

.field private No:Z

.field private Np:Z

.field private Nq:Landroid/widget/TextView;

.field Nr:Landroid/preference/CheckBoxPreference;

.field private final Ns:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nh:Landroid/view/View;

    .line 591
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$4;

    invoke-direct {v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Ns:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;ILcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 311
    invoke-virtual {p0, p3}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 313
    if-eqz p4, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mN()V

    .line 316
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Np:Z

    return p1
.end method

.method private mi()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nn:Z

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 281
    iput-boolean v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nn:Z

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mM()V

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->NO:Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->mL()V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 291
    iput-boolean v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->No:Z

    .line 294
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothSettings;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mM()V

    .line 452
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->aT(I)V

    .line 453
    return-void
.end method

.method public aL(I)V
    .locals 0

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->aL(I)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->aT(I)V

    .line 438
    return-void
.end method

.method protected aT(I)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mM()V

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->invalidateOptionsMenu()V

    .line 432
    :cond_1
    :goto_1
    return-void

    .line 329
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->NQ:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nl:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_7

    .line 339
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nl:Landroid/preference/PreferenceGroup;

    .line 343
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nl:Landroid/preference/PreferenceGroup;

    const v2, 0x7f09022d

    sget-object v3, Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter;->Mq:Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 346
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nl:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 348
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v2

    if-nez v2, :cond_2

    if-gtz v1, :cond_3

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nl:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_8

    .line 356
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    .line 357
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 361
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    const v2, 0x7f09022e

    sget-object v3, Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter;->Mr:Lcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->No:Z

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/settings_ext/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    .line 366
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->No:Z

    if-nez v0, :cond_4

    .line 367
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mi()V

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_5

    .line 373
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nk:Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nk:Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothDiscoverableEnabler;->aP(I)V

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->invalidateOptionsMenu()V

    .line 392
    iget-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Np:Z

    if-eqz v0, :cond_1

    .line 396
    iput-boolean v5, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Np:Z

    goto/16 :goto_1

    .line 341
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nl:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nm:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 412
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 419
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->No:Z

    goto/16 :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public al(Z)V
    .locals 0

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->al(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->invalidateOptionsMenu()V

    .line 447
    return-void
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 588
    const v0, 0x7f090936

    return v0
.end method

.method d(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mX()V

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->d(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V

    .line 305
    return-void
.end method

.method e(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lG()Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Ns:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->a(Landroid/view/View$OnClickListener;)V

    .line 584
    :cond_0
    return-void
.end method

.method mh()V
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 181
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->No:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Np:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nq:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 166
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 232
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v4

    .line 233
    if-eqz v4, :cond_3

    const v3, 0x7f090222

    .line 235
    :goto_2
    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    :goto_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 238
    const/4 v1, 0x2

    const v3, 0x7f0900db

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 241
    const/4 v0, 0x3

    const v1, 0x7f0900f5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 243
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 231
    goto :goto_1

    .line 233
    :cond_3
    const v3, 0x7f090221

    goto :goto_2

    :cond_4
    move v1, v2

    .line 235
    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 174
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 271
    invoke-super {p0, p1}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 250
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mX()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mi()V

    goto :goto_0

    .line 262
    :pswitch_1
    new-instance v1, Lcom/android/settings_ext/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ext/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ext/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Ni:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Ni:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->pause()V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Ni:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Ni:Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/MiuiBluetoothEnabler;->resume()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Np:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->gy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mM()V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Nq:Landroid/widget/TextView;

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->Mh:Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->aT(I)V

    goto :goto_0
.end method
