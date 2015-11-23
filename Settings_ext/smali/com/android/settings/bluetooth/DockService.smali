.class public final Lcom/android/settings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field private Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private Mi:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private volatile Og:Landroid/os/Looper;

.field private volatile Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

.field private Oi:Ljava/lang/Runnable;

.field private Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field private Ok:I

.field private Ol:Landroid/bluetooth/BluetoothDevice;

.field private Om:I

.field private On:I

.field private Oo:I

.field private Op:Landroid/widget/CheckBox;

.field private final Oq:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private final Or:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final Os:Landroid/content/DialogInterface$OnDismissListener;

.field private final Ot:Landroid/content/DialogInterface$OnClickListener;

.field private mCheckedItems:[Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->On:I

    .line 121
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->Oo:I

    .line 561
    new-instance v0, Lcom/android/settings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$2;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oq:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 573
    new-instance v0, Lcom/android/settings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$3;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Or:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 591
    new-instance v0, Lcom/android/settings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$4;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Os:Landroid/content/DialogInterface$OnDismissListener;

    .line 605
    new-instance v0, Lcom/android/settings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$5;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ot:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v1, 0x1bc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    return-void
.end method

.method private declared-synchronized a(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 3

    .prologue
    .line 774
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 776
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_0

    .line 778
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 780
    if-eqz v1, :cond_0

    .line 781
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 783
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 786
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->c(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 792
    :cond_0
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    monitor-exit p0

    return-void

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 686
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 687
    monitor-enter p0

    .line 689
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 690
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/DockService;->ba(I)V

    .line 716
    :cond_0
    :goto_0
    monitor-exit p0

    .line 717
    return-void

    .line 691
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 696
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 697
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    goto :goto_0

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 698
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 703
    :try_start_1
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->Oo:I

    if-eq v0, v2, :cond_3

    .line 704
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->Oo:I

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 705
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 706
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->Oo:I

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    .line 710
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 711
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->On:I

    goto :goto_0

    .line 713
    :cond_4
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/os/Message;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->o(Landroid/bluetooth/BluetoothDevice;)V

    .line 333
    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DockService;->m(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const v3, 0x7f090265

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 634
    packed-switch p2, :pswitch_data_0

    .line 644
    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    :pswitch_0
    move v0, v1

    .line 647
    :goto_1
    new-array v2, v0, [Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 648
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .line 649
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 652
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 671
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 672
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nl()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v2

    aput-object v2, v1, v4

    .line 673
    if-eqz p3, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 641
    :pswitch_2
    const/4 v0, 0x2

    .line 642
    goto :goto_1

    .line 654
    :pswitch_3
    const v2, 0x7f090264

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 655
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 656
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nm()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 657
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nl()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v1

    .line 658
    if-eqz p3, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v1, v2, v4

    .line 661
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v1, v2, v1

    goto :goto_0

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 664
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v1

    goto :goto_0

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v2, v2, v4

    invoke-interface {v2, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    aput-boolean v2, v1, v4

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 652
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/DockService;)[Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method private aZ(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 313
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->Oo:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 808
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 873
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 814
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-boolean v5, v3, v2

    .line 815
    if-eqz v5, :cond_3

    .line 816
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mY()I

    move-result v5

    .line 822
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 825
    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    .line 826
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :cond_2
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    .line 831
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->Om:I

    .line 832
    const/16 v0, 0xb

    if-eq v5, v0, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 814
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 841
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    .line 844
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    move v2, v0

    .line 846
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 847
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v4, v4, v2

    .line 850
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_6

    move v0, v1

    .line 861
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    invoke-interface {v4, p1, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 853
    :cond_6
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_5

    .line 855
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 856
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 858
    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->Oj:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 869
    :cond_7
    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ao(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 373
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    if-eqz p1, :cond_3

    .line 378
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->o(Landroid/bluetooth/BluetoothDevice;)V

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 389
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 390
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 415
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 396
    :cond_2
    new-instance v1, Lcom/android/settings/bluetooth/DockService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService$1;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oi:Ljava/lang/Runnable;

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_audio_media_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 409
    if-ne v1, v3, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 411
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private ba(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, -0x64

    .line 720
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->Om:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 731
    :cond_0
    iput-object v5, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    .line 732
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->Om:I

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 759
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->On:I

    if-eq v0, v3, :cond_2

    .line 760
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->On:I

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 761
    iput v3, p0, Lcom/android/settings/bluetooth/DockService;->On:I

    .line 764
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 765
    :goto_1
    return-void

    .line 734
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 740
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 741
    if-eqz v1, :cond_1

    .line 742
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 744
    if-eqz v2, :cond_4

    .line 745
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 747
    if-eqz v0, :cond_1

    .line 748
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->n(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 750
    :cond_4
    const-string v1, "disable_bt"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->Oo:I

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private c(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 10

    .prologue
    const v6, 0x7f090263

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 485
    iput-object v8, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 488
    packed-switch p2, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 498
    :pswitch_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 504
    iput-object v8, p0, Lcom/android/settings/bluetooth/DockService;->Op:Landroid/widget/CheckBox;

    .line 506
    if-eqz p1, :cond_4

    .line 508
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 511
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 513
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 516
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v7, p0, Lcom/android/settings/bluetooth/DockService;->Oq:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    const v5, 0x7f0400e2

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 520
    const v1, 0x7f100259

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 523
    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    :cond_1
    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 526
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Or:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v1, v5

    .line 545
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 546
    mul-float v2, v9, v4

    float-to-int v2, v2

    .line 547
    mul-float/2addr v4, v9

    float-to-int v4, v4

    move v5, v3

    .line 548
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 551
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Ot:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    iput p3, p0, Lcom/android/settings/bluetooth/DockService;->Ok:I

    .line 554
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 555
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Os:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 508
    goto :goto_1

    :cond_3
    move v4, v3

    .line 523
    goto :goto_2

    .line 532
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 534
    const v2, 0x7f040054

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 535
    const v1, 0x7f1000c3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Op:Landroid/widget/CheckBox;

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dock_audio_media_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 541
    :goto_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Op:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 542
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Op:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->Or:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v1, v2

    goto :goto_3

    :cond_5
    move v4, v3

    .line 538
    goto :goto_4

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/android/settings/bluetooth/DockService;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->Ok:I

    return v0
.end method

.method private declared-synchronized d(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    .prologue
    .line 877
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 881
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :goto_0
    monitor-exit p0

    return-void

    .line 883
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 259
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 260
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 261
    const/4 v0, 0x0

    .line 262
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 269
    :goto_0
    const/4 v0, 0x0

    .line 271
    sparse-switch v2, :sswitch_data_0

    .line 295
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    const/16 v1, 0x14d

    if-eq v2, v1, :cond_1

    if-nez v0, :cond_1

    .line 299
    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_1
    monitor-exit p0

    return-void

    .line 273
    :sswitch_0
    if-eqz v1, :cond_0

    .line 274
    :try_start_1
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 279
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    goto :goto_1

    .line 283
    :sswitch_2
    invoke-direct {p0, v1, v4}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    goto :goto_1

    .line 287
    :sswitch_3
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 291
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->aZ(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic e(Lcom/android/settings/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Op:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private mT()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 179
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized n(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mA()Ljava/util/List;

    move-result-object v0

    .line 799
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 800
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 801
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ao(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :cond_1
    monitor-exit p0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 888
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oi:Ljava/lang/Runnable;

    .line 889
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 890
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 894
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Ol:Landroid/bluetooth/BluetoothDevice;

    .line 896
    if-eqz p1, :cond_1

    .line 897
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :cond_1
    monitor-exit p0

    return-void

    .line 888
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 3

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mi:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->h(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 904
    if-nez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mi:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 907
    :cond_0
    return-object v0
.end method

.method private q(Landroid/content/Intent;)Landroid/os/Message;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 441
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 442
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/16 v3, -0x4d2

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 450
    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 477
    :goto_0
    return-object v0

    .line 452
    :pswitch_0
    const/16 v1, 0x14d

    .line 477
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 457
    :pswitch_1
    if-nez v0, :cond_0

    .line 458
    const-string v0, "DockService"

    const-string v2, "device is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 459
    goto :goto_0

    .line 463
    :cond_0
    :pswitch_2
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    if-nez v0, :cond_1

    .line 465
    const-string v0, "DockService"

    const-string v2, "device is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 466
    goto :goto_0

    .line 468
    :cond_1
    const/16 v1, 0x6f

    goto :goto_1

    .line 470
    :cond_2
    const/16 v1, 0xde

    .line 472
    goto :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized m(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mi:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mK()Ljava/util/Collection;

    move-result-object v0

    .line 420
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 437
    :goto_0
    monitor-exit p0

    return v0

    .line 429
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 430
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 431
    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 437
    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ai(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const-string v0, "DockService"

    const-string v1, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->nb()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 136
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ne()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mi:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 137
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->ng()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_1

    .line 139
    const-string v0, "DockService"

    const-string v1, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DockService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Og:Landroid/os/Looper;

    .line 147
    new-instance v0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Og:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$1;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oi:Ljava/lang/Runnable;

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 156
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Og:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Og:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 165
    :cond_2
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mh:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 166
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mi:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 167
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 168
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Og:Landroid/os/Looper;

    .line 169
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Oh:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    .line 170
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oi:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oi:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Oi:Ljava/lang/Runnable;

    .line 914
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->b(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :cond_0
    monitor-exit p0

    return-void

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 186
    if-nez p1, :cond_1

    .line 192
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 242
    :cond_0
    :goto_0
    return v4

    .line 196
    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->mT()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 209
    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 210
    if-ge v2, v5, :cond_0

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "connect_retry_count"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nm()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 215
    :cond_3
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 219
    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 220
    if-ge v2, v5, :cond_0

    .line 221
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "connect_retry_count"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->Mk:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->nl()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/settings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 227
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->q(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    .line 228
    if-nez v0, :cond_5

    .line 231
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 235
    :cond_5
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xde

    if-ne v2, v3, :cond_6

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    :cond_6
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 240
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->d(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
