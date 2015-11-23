.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private aU:Landroid/os/UserManager;

.field private aY:Z

.field private hD:Landroid/net/wifi/WifiManager;

.field private pb:Landroid/os/storage/StorageManager;

.field private ya:Landroid/preference/CheckBoxPreference;

.field private yb:Lcom/android/settings/wifi/Q;

.field private yc:Landroid/preference/CheckBoxPreference;

.field private yd:Landroid/preference/CheckBoxPreference;

.field private ye:Landroid/content/BroadcastReceiver;

.field private yf:[Ljava/lang/String;

.field private yg:[Ljava/lang/String;

.field private yh:[Ljava/lang/String;

.field private yi:Ljava/util/concurrent/atomic/AtomicReference;

.field private yj:[Ljava/lang/String;

.field private yk:Landroid/preference/Preference;

.field private yl:Lcom/android/settings/wifi/P;

.field private ym:Landroid/net/wifi/WifiConfiguration;

.field private yn:Z

.field private yo:Z

.field private yp:Z

.field private yq:I

.field private yr:[Ljava/lang/String;

.field private ys:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->pb:Landroid/os/storage/StorageManager;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->yq:I

    .line 251
    new-instance v0, Lcom/android/settings/gC;

    invoke-direct {v0, p0}, Lcom/android/settings/gC;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ys:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 272
    return-void
.end method

.method public static K(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->c([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/settings/TetherSettings;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static L(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 797
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 799
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 800
    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v3, v2

    .line 799
    goto :goto_0

    :cond_1
    move v0, v2

    .line 800
    goto :goto_1
.end method

.method private M(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 673
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09049a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 683
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 736
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 737
    array-length v5, p1

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, p1, v1

    .line 738
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 743
    :goto_2
    return-object v0

    .line 737
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 743
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 3

    .prologue
    .line 571
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090d76

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/gE;

    invoke-direct {v2, p0}, Lcom/android/settings/gE;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/gD;

    invoke-direct {v2, p0}, Lcom/android/settings/gD;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 591
    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->aa(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 558
    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provisionApp length should at least be 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 562
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    aget-object v4, p1, v1

    aget-object v5, p1, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->yo:Z

    return p1
.end method

.method private aa(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 604
    iput p1, p0, Lcom/android/settings/TetherSettings;->yq:I

    .line 605
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yr:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yr:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->yr:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->yq:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hf()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method private b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 419
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 421
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->yn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->yo:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 422
    :goto_0
    const/4 v5, 0x0

    .line 423
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v7, p1, v4

    .line 424
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->yf:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_3

    aget-object v5, v8, v3

    .line 425
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 428
    if-eqz v2, :cond_0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_1

    .line 429
    :cond_0
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 424
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 421
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 423
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 434
    :cond_4
    const/4 v4, 0x0

    .line 435
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_7

    aget-object v7, p2, v3

    .line 436
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->yf:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_6

    aget-object v4, v8, v2

    .line 437
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    .line 436
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 435
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 440
    :cond_7
    const/4 v2, 0x0

    .line 441
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_a

    aget-object v7, p3, v3

    .line 442
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->yf:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_9

    aget-object v10, v8, v2

    .line 443
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v0, 0x1

    .line 442
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 441
    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 447
    :cond_a
    if-eqz v4, :cond_c

    .line 448
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090496

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 476
    :cond_b
    :goto_7
    return-void

    .line 451
    :cond_c
    if-eqz v1, :cond_f

    .line 454
    if-eqz v5, :cond_d

    const/16 v0, 0x10

    if-ne v5, v0, :cond_e

    .line 455
    :cond_d
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090495

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 459
    :goto_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 462
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 457
    :cond_e
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09049a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 463
    :cond_f
    if-eqz v2, :cond_10

    .line 464
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09049a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 467
    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->yo:Z

    if-eqz v0, :cond_11

    .line 468
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090497

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 472
    :cond_11
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090498

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method static synthetic b(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->yn:Z

    return p1
.end method

.method private c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 480
    .line 481
    array-length v5, p3

    move v4, v3

    move v2, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p3, v4

    .line 482
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->yh:[Ljava/lang/String;

    array-length v8, v7

    move v0, v2

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_1

    aget-object v9, v7, v2

    .line 483
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v1

    .line 482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 481
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    .line 487
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 488
    if-nez v0, :cond_3

    .line 523
    :goto_2
    return-void

    .line 490
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 491
    const/16 v0, 0xd

    if-ne v4, v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 494
    :cond_4
    const/16 v0, 0xb

    if-ne v4, v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 499
    const/16 v5, 0xc

    if-ne v4, v5, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 501
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 502
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 503
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 504
    if-le v0, v1, :cond_6

    .line 505
    const v2, 0x7f09049e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 509
    :cond_6
    if-ne v0, v1, :cond_7

    .line 510
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09049d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 512
    :cond_7
    if-eqz v2, :cond_8

    .line 513
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 515
    :cond_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09049c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 518
    :cond_9
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904a0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->yp:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->yp:Z

    return p1
.end method

.method private static c([Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 596
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private he()V
    .locals 8

    .prologue
    const v7, 0x7f090340

    const v4, 0x11070056

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 221
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    .line 222
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yj:[Ljava/lang/String;

    .line 225
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yk:Landroid/preference/Preference;

    .line 227
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->yk:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yj:[Ljava/lang/String;

    aget-object v0, v0, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :goto_1
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->hg()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/P;->c(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 245
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->yk:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->yj:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private hf()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 642
    iget v0, p0, Lcom/android/settings/TetherSettings;->yq:I

    packed-switch v0, :pswitch_data_0

    .line 667
    :goto_0
    return-void

    .line 644
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/Q;->bl(Z)V

    goto :goto_0

    .line 648
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 650
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->yp:Z

    .line 651
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 652
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 656
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09049c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 661
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->M(Z)V

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 401
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 404
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 408
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 807
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->hg()V

    .line 810
    :cond_0
    return-void
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 787
    const v0, 0x7f09093f

    return v0
.end method

.method public hg()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 771
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 774
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 778
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/P;->c(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yk:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090340

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->yj:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 783
    :cond_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 616
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 617
    if-nez p1, :cond_2

    .line 618
    if-ne p2, v1, :cond_1

    .line 619
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->hf()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->yq:I

    packed-switch v0, :pswitch_data_0

    .line 631
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->yq:I

    goto :goto_0

    .line 625
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 628
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 635
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 636
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TetherSettings;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 747
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yl:Lcom/android/settings/wifi/P;

    invoke-virtual {v0}, Lcom/android/settings/wifi/P;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    .line 749
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 757
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/P;->c(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 762
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yk:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090340

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->yj:[Ljava/lang/String;

    aget-object v0, v4, v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 767
    :cond_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->hD:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v0, "TETHER_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/TetherSettings;->yq:I

    .line 143
    :cond_0
    const v0, 0x7f060091

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 145
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->aU:Landroid/os/UserManager;

    .line 147
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->aU:Landroid/os/UserManager;

    const-string v3, "no_config_tethering"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->aY:Z

    .line 149
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 211
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 154
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->ys:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v0, v3, v4, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 160
    :cond_2
    const-string v0, "enable_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yc:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v0, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 163
    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->pb:Landroid/os/storage/StorageManager;

    .line 167
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->yf:[Ljava/lang/String;

    .line 171
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->yg:[Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yh:[Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yf:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 175
    :goto_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->yg:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_6

    move v3, v1

    .line 176
    :goto_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->yh:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_7

    move v4, v1

    .line 178
    :goto_3
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_4
    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v0

    if-nez v0, :cond_8

    .line 185
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->he()V

    .line 186
    new-instance v0, Lcom/android/settings/wifi/Q;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->yc:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v5, v3}, Lcom/android/settings/wifi/Q;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    .line 193
    :goto_4
    if-nez v4, :cond_9

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080005

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->yr:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 174
    goto :goto_1

    :cond_6
    move v3, v2

    .line 175
    goto :goto_2

    :cond_7
    move v4, v2

    .line 176
    goto :goto_3

    .line 189
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->yc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 197
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/android/settings/wifi/P;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/P;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->yl:Lcom/android/settings/wifi/P;

    .line 266
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yl:Lcom/android/settings/wifi/P;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 814
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 815
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 816
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 817
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 818
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 820
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 526
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 528
    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 531
    const-string v0, "connectivity"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 532
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    .line 533
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    move v1, v2

    .line 534
    :goto_0
    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    .line 535
    invoke-direct {p0, v4, v0}, Lcom/android/settings/TetherSettings;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    .line 547
    :goto_1
    return v3

    :cond_0
    move v1, v3

    .line 533
    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->aa(I)V

    :goto_2
    move v3, v2

    .line 547
    goto :goto_1

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/Q;->bl(Z)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 687
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 690
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 691
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ya:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 693
    if-eqz v0, :cond_1

    .line 694
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->aa(I)V

    .line 732
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 696
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->M(Z)V

    goto :goto_0

    .line 698
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 699
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 701
    if-eqz v1, :cond_3

    .line 702
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->aa(I)V

    goto :goto_0

    .line 706
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 707
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->yh:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/TetherSettings;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 713
    :goto_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 714
    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 715
    :cond_4
    if-eqz v3, :cond_5

    .line 716
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yd:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0904a0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 721
    :cond_6
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yk:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 724
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 725
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_7

    .line 726
    const-string v0, "config"

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ym:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 728
    :cond_7
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TetherSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 215
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->yq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 324
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->aY:Z

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 329
    if-eqz v0, :cond_0

    .line 330
    const v1, 0x7f0905fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 355
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->yo:Z

    .line 358
    new-instance v1, Lcom/android/settings/gF;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/gF;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/gC;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 362
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 363
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 373
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Q;->resume()V

    .line 382
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 389
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->aY:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->ye:Landroid/content/BroadcastReceiver;

    .line 394
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->yb:Lcom/android/settings/wifi/Q;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Q;->pause()V

    goto :goto_0
.end method
