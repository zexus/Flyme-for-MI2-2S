.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# instance fields
.field private final Ak:Ljava/lang/Runnable;

.field private Nq:Landroid/widget/TextView;

.field private aom:Landroid/media/MediaRouter;

.field private aon:I

.field protected aoo:Z

.field private aop:Landroid/hardware/display/WifiDisplayStatus;

.field private aoq:Z

.field private aor:Landroid/net/wifi/p2p/WifiP2pManager;

.field private aos:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private aot:Landroid/preference/PreferenceGroup;

.field private aou:Z

.field private aov:Z

.field private aow:I

.field private aox:I

.field private aoy:I

.field private final aoz:Landroid/media/MediaRouter$Callback;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStarted:Z

.field private final ul:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 126
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aow:I

    .line 620
    new-instance v0, Lcom/android/settings/wfd/i;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/i;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->Ak:Ljava/lang/Runnable;

    .line 629
    new-instance v0, Lcom/android/settings/wfd/j;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/j;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 639
    new-instance v0, Lcom/android/settings/wfd/k;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/k;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->ul:Landroid/database/ContentObserver;

    .line 646
    new-instance v0, Lcom/android/settings/wfd/l;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/l;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoz:Landroid/media/MediaRouter$Callback;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aow:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private a(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/u;
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->bG(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    new-instance v0, Lcom/android/settings/wfd/w;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/android/settings/wfd/w;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    .line 320
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/wfd/u;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/u;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private a(Landroid/hardware/display/WifiDisplay;)V
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->r(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->b(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->b(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aou:Z

    return p1
.end method

.method private aU(Z)V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aos:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/t;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/t;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 551
    return-void
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aox:I

    return p1
.end method

.method private b(Landroid/hardware/display/WifiDisplay;)V
    .locals 5

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 590
    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 591
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    new-instance v2, Lcom/android/settings/wfd/g;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/wfd/g;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 603
    new-instance v0, Lcom/android/settings/wfd/h;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/h;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 610
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090276

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f090278

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090277

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 618
    return-void
.end method

.method private b(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->aU(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aou:Z

    return v0
.end method

.method private bG(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 327
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    :goto_1
    return-object v0

    .line 326
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoy:I

    return p1
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 336
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    .line 338
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    const v1, 0x7f09027a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 348
    const v1, 0x7f09027b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    new-instance v1, Lcom/android/settings/wfd/c;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wfd/c;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/m;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/m;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 399
    const v1, 0x7f09027c

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 400
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aou:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 404
    new-instance v0, Lcom/android/settings/wfd/n;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/n;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 416
    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 417
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aov:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    new-instance v0, Lcom/android/settings/wfd/o;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/o;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aow:I

    .line 436
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Default"

    aput-object v2, v1, v6

    const-string v2, "PBC"

    aput-object v2, v1, v4

    const-string v2, "KEYPAD"

    aput-object v2, v1, v7

    const-string v2, "DISPLAY"

    aput-object v2, v1, v8

    .line 437
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "4"

    aput-object v3, v2, v6

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    .line 442
    const v3, 0x7f090280

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 443
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 446
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    new-instance v0, Lcom/android/settings/wfd/p;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/p;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 462
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    .line 463
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    .line 464
    const v3, 0x7f090281

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 468
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 472
    new-instance v0, Lcom/android/settings/wfd/q;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/q;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 484
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    const-string v2, "36"

    aput-object v2, v1, v5

    .line 485
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    const-string v3, "36"

    aput-object v3, v2, v5

    .line 486
    const v3, 0x7f090282

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 487
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 490
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 492
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aot:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aov:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aov:Z

    return p1
.end method

.method private cF(I)V
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 229
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->Ak:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    .line 234
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    return p1
.end method

.method static synthetic d(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->sV()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->sW()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aow:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->cF(I)V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aox:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoy:I

    return v0
.end method

.method static synthetic i(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    return v0
.end method

.method private r(II)V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aos:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/f;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/f;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 571
    return-void
.end method

.method private sU()V
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aon:I

    .line 239
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->Ak:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    return-void
.end method

.method private sV()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aos:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/r;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/r;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 511
    return-void
.end method

.method private sW()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aos:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/s;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/s;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 530
    return-void
.end method

.method private update(I)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    .line 247
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoo:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_certification_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoq:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_wps_config"

    invoke-static {v0, v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aow:I

    move v0, v1

    .line 260
    :goto_2
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    move v0, v1

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 269
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 271
    const v3, 0x7f0600a4

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 274
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aom:Landroid/media/MediaRouter;

    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v5

    move v3, v2

    .line 275
    :goto_3
    if-ge v3, v5, :cond_4

    .line 276
    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aom:Landroid/media/MediaRouter;

    invoke-virtual {v6, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    .line 277
    invoke-virtual {v6, v8}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/u;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    .line 248
    goto :goto_0

    :cond_3
    move v0, v2

    .line 250
    goto :goto_1

    .line 283
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    .line 286
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    array-length v5, v3

    :goto_4
    if-ge v2, v5, :cond_6

    aget-object v6, v3, v2

    .line 287
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aop:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 289
    new-instance v7, Lcom/android/settings/wfd/v;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, p0, v8, v6}, Lcom/android/settings/wfd/v;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 286
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 295
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoq:Z

    if-eqz v2, :cond_7

    .line 296
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->c(Landroid/preference/PreferenceScreen;)V

    .line 301
    :cond_7
    if-eqz v0, :cond_8

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 305
    :cond_8
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-le v0, v1, :cond_9

    .line 306
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 307
    const/16 v1, -0x63

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 308
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_9
    const-string v0, "enable_wifi_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoo:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 312
    return-void

    :cond_a
    move v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method protected ao()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f090945

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->Nq:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->Nq:Landroid/widget/TextView;

    const v1, 0x7f090270

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->Nq:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 139
    const-string v0, "media_router"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aom:Landroid/media/MediaRouter;

    .line 140
    const-string v0, "display"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 141
    const-string v0, "wifip2p"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 142
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aor:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aos:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 144
    const v0, 0x7f0600a4

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 218
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoo:Z

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoo:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoo:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 218
    goto :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 165
    iput-boolean v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->ul:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_certification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->ul:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->ul:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aom:Landroid/media/MediaRouter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoz:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 182
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    .line 183
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->ul:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aom:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->aoz:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->sU()V

    .line 198
    return-void
.end method
