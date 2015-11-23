.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/BaseFragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# instance fields
.field private CD:Landroid/widget/TextView;

.field private CP:Landroid/content/pm/PackageInfo;

.field private DU:Lcom/android/settings/applications/ApplicationsState;

.field private DV:Lcom/android/settings/applications/ApplicationsState$Session;

.field private EQ:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private Ej:Ljava/lang/CharSequence;

.field private FA:Landroid/widget/CheckBox;

.field private FB:Landroid/widget/CheckBox;

.field private FC:Z

.field private FD:Z

.field private FE:Landroid/widget/TextView;

.field private FF:Landroid/widget/TextView;

.field private FG:Landroid/widget/TextView;

.field private FH:Landroid/widget/TextView;

.field private FI:Landroid/widget/TextView;

.field private FJ:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private FK:Landroid/widget/TextView;

.field private FL:Landroid/widget/Button;

.field private FM:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private FN:Landroid/widget/Button;

.field private FO:Landroid/widget/Button;

.field private FP:Landroid/widget/Button;

.field private FQ:Landroid/widget/CompoundButton;

.field private FR:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private final FS:Ljava/util/HashSet;

.field private FT:Z

.field private FU:Z

.field private FV:J

.field private FW:J

.field private FX:J

.field private FY:J

.field private FZ:J

.field private Fp:Landroid/hardware/usb/IUsbManager;

.field private Fq:Lcom/android/internal/telephony/ISms;

.field private Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private Fs:Z

.field private Ft:Landroid/widget/Button;

.field private Fu:Landroid/view/View;

.field private Fv:Landroid/widget/Button;

.field private Fw:Z

.field private Fx:Z

.field private Fy:Landroid/widget/Button;

.field private Fz:Landroid/view/View;

.field private Ga:J

.field private Gb:Ljava/lang/CharSequence;

.field private Gc:Ljava/util/HashSet;

.field private final Gd:Landroid/content/BroadcastReceiver;

.field private ai:Landroid/appwidget/AppWidgetManager;

.field private hC:Landroid/app/admin/DevicePolicyManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mRootView:Landroid/view/View;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fw:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fx:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FC:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    .line 152
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->FU:Z

    .line 153
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FV:J

    .line 154
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FW:J

    .line 155
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FX:J

    .line 156
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FY:J

    .line 157
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FZ:J

    .line 158
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ga:J

    .line 196
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1297
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gd:Landroid/content/BroadcastReceiver;

    .line 1332
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->aA(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 973
    const v0, 0x7f090519

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 974
    const v0, 0x7f090530

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 976
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fy:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 977
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->ad(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->b(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1279
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1280
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1281
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1282
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->FT:Z

    .line 1283
    return-void
.end method

.method private a(Landroid/widget/Button;)Z
    .locals 5

    .prologue
    const v4, 0x7f09052a

    const/4 v0, 0x1

    .line 337
    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    .line 352
    :goto_0
    return v0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 348
    :cond_2
    const v1, 0x7f09052b

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private aA(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 291
    const-string v0, ""

    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090567

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090568

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090569

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09056a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09056b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ac(Z)V
    .locals 2

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1311
    :goto_0
    return-void

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private ad(Z)V
    .locals 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1354
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1357
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 1358
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v0, v2, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    :goto_0
    return-void

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 592
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f100018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v5, v0, v5, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 595
    const v0, 0x7f100013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 598
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    const v0, 0x7f100014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 602
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    const v0, 0x7f1000a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CD:Landroid/widget/TextView;

    .line 606
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CD:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090562

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CD:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1059
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1060
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1061
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    const v3, 0x7f09052c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1062
    if-ne v0, v4, :cond_0

    .line 1063
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->ae(Ljava/lang/String;)V

    .line 1068
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->ji()V

    .line 1069
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->ac(Z)V

    return-void
.end method

.method private b(ZZ)V
    .locals 3

    .prologue
    .line 981
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 982
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 984
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/gh;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 985
    return-void
.end method

.method static synthetic c(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 1086
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1087
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1089
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fw:Z

    .line 1090
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1091
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->ae(Ljava/lang/String;)V

    .line 1097
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->iC()Z

    .line 1098
    return-void

    .line 1095
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jh()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    return-object v0
.end method

.method private e(II)V
    .locals 4

    .prologue
    .line 1125
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->f(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1126
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method static synthetic f(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1288
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->ah(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->ad(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1291
    if-eqz v0, :cond_0

    .line 1292
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1294
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->ji()V

    .line 1295
    return-void
.end method

.method static synthetic g(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1366
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fq:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fq:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1372
    :goto_0
    return v0

    .line 1369
    :catch_0
    move-exception v0

    .line 1372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iB()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    :goto_0
    if-nez v1, :cond_3

    .line 670
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 672
    :goto_1
    if-eqz v0, :cond_3

    .line 673
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ApplicationsState;->ad(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 677
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2240

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_3
    return-object v0

    :cond_0
    move-object v1, v2

    .line 668
    goto :goto_0

    .line 670
    :cond_1
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    .line 684
    :catch_0
    move-exception v1

    .line 685
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 688
    :cond_2
    const-string v1, "InstalledAppDetails"

    const-string v3, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private iC()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 711
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fw:Z

    if-eqz v0, :cond_1

    .line 933
    :cond_0
    :goto_0
    return v4

    .line 714
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->iB()Ljava/lang/String;

    move-result-object v6

    .line 716
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_2

    move v4, v3

    .line 717
    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    move v4, v3

    .line 721
    goto :goto_0

    .line 725
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 727
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move v1, v3

    .line 728
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 729
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 730
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 731
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 735
    if-eqz v0, :cond_4

    .line 736
    const-string v7, "android.app.home.alternate"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-direct {p0, v0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 738
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 744
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fp:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v6, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 757
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ai:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 760
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f100105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 761
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f100106

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 762
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    move v5, v4

    .line 763
    :goto_3
    if-nez v5, :cond_9

    if-nez v7, :cond_9

    .line 764
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 803
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 805
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fz:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f10010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 821
    new-instance v5, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v6}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 822
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v7

    .line 826
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-gtz v1, :cond_7

    if-eqz v7, :cond_12

    .line 828
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 833
    :goto_5
    const v1, 0x7f10010c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 835
    const v2, 0x7f10010d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 837
    if-eqz v7, :cond_13

    .line 839
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    const v1, 0x7f10010e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 843
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v8, 0x7f0b0062

    const v9, 0x1090008

    invoke-static {v2, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 846
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 847
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 849
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 850
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fq:Lcom/android/internal/telephony/ISms;

    invoke-direct {v2, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 858
    :goto_6
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-lez v1, :cond_16

    .line 860
    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 862
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 863
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 867
    if-eqz v1, :cond_16

    array-length v0, v1

    if-le v0, v4, :cond_16

    .line 868
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 869
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 870
    aget-object v2, v1, v0

    .line 871
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 869
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 754
    :catch_0
    move-exception v0

    .line 755
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_2

    :cond_8
    move v5, v3

    .line 762
    goto/16 :goto_3

    .line 766
    :cond_9
    if-eqz v7, :cond_e

    if-eqz v5, :cond_e

    move v2, v4

    .line 768
    :goto_9
    if-eqz v7, :cond_f

    .line 769
    const v8, 0x7f09051a

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 774
    :goto_a
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 777
    if-eqz v5, :cond_b

    .line 778
    const v5, 0x7f09052e

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 779
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 780
    if-eqz v2, :cond_a

    .line 781
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v9, v10, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 783
    :cond_a
    if-nez v0, :cond_10

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v3

    const-string v5, "\n"

    aput-object v5, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 786
    :cond_b
    :goto_b
    if-eqz v7, :cond_d

    .line 787
    const v5, 0x7f09052f

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 789
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 790
    if-eqz v2, :cond_c

    .line 791
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v7, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 794
    :cond_c
    if-nez v0, :cond_11

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v3

    const-string v2, "\n"

    aput-object v2, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 797
    :cond_d
    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fy:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_e
    move v2, v3

    .line 766
    goto :goto_9

    .line 771
    :cond_f
    const v8, 0x7f090519

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 783
    :cond_10
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    const-string v0, "\n"

    aput-object v0, v5, v4

    aput-object v9, v5, v11

    const-string v0, "\n"

    aput-object v0, v5, v13

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 794
    :cond_11
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    const-string v0, "\n"

    aput-object v0, v2, v4

    aput-object v7, v2, v11

    const-string v0, "\n"

    aput-object v0, v2, v13

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 830
    :cond_12
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 854
    :cond_13
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 875
    :cond_14
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 876
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 877
    :catch_1
    move-exception v2

    goto/16 :goto_8

    .line 880
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 881
    if-lez v6, :cond_16

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 884
    if-ne v6, v4, :cond_18

    .line 885
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 898
    :goto_d
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f10010f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 900
    const v2, 0x7f090558

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v7, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_16
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->ji()V

    .line 907
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->b(Landroid/content/pm/PackageInfo;)V

    .line 908
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jg()V

    .line 909
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jf()V

    .line 911
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v0, :cond_1c

    .line 913
    iput-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 914
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    move v3, v4

    :cond_17
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fs:Z

    goto/16 :goto_0

    .line 886
    :cond_18
    if-ne v6, v11, :cond_19

    .line 887
    const v0, 0x7f090559

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    .line 890
    :cond_19
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    add-int/lit8 v0, v6, -0x3

    move-object v2, v1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_1b

    .line 892
    if-nez v1, :cond_1a

    const v0, 0x7f09055b

    :goto_f
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v2, v8, v4

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 891
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 892
    :cond_1a
    const v0, 0x7f09055c

    goto :goto_f

    .line 895
    :cond_1b
    const v0, 0x7f09055a

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    .line 919
    :cond_1c
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 922
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fs:Z

    if-nez v1, :cond_0

    .line 926
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move v4, v3

    goto/16 :goto_0

    .line 928
    :catch_2
    move-exception v0

    move v4, v3

    .line 929
    goto/16 :goto_0
.end method

.method private ja()V
    .locals 4

    .prologue
    const v3, 0x7f09052c

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FC:Z

    .line 271
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    :cond_1
    return-void

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    const v1, 0x7f09053e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private jb()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_2

    move v0, v1

    .line 302
    :goto_1
    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    const v3, 0x7f090563

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    .line 312
    :goto_2
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    if-eqz v0, :cond_5

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 300
    goto :goto_1

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    const v3, 0x7f090564

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    move v0, v2

    .line 307
    goto :goto_2

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    const v3, 0x7f090565

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->EQ:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    move v0, v1

    goto :goto_2

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private jc()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 326
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gc:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gc:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 332
    :cond_2
    :goto_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private jd()V
    .locals 6

    .prologue
    const v5, 0x7f090527

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fx:Z

    .line 357
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    .line 359
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fx:Z

    if-eqz v3, :cond_7

    .line 360
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    const v5, 0x7f09052d

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 362
    if-eqz v0, :cond_e

    .line 363
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fv:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/Button;)Z

    move-result v3

    .line 364
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fv:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    :goto_2
    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    if-eqz v5, :cond_0

    move v3, v2

    .line 369
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fu:Landroid/view/View;

    if-eqz v3, :cond_6

    move v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    move v3, v1

    .line 387
    :goto_4
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    .line 397
    :cond_1
    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 398
    if-eqz v0, :cond_a

    move v1, v2

    .line 415
    :cond_2
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    if-eqz v0, :cond_c

    .line 419
    :goto_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 420
    if-eqz v2, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 356
    goto :goto_0

    :cond_5
    move v0, v2

    .line 357
    goto :goto_1

    :cond_6
    move v3, v4

    .line 369
    goto :goto_3

    .line 371
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fu:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 372
    if-eqz v0, :cond_8

    .line 373
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/Button;)Z

    move-result v3

    goto :goto_4

    .line 374
    :cond_8
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_9

    .line 379
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    move v3, v2

    .line 380
    goto :goto_4

    .line 382
    :cond_9
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    move v3, v1

    goto :goto_4

    .line 401
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 403
    if-nez v0, :cond_b

    .line 406
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FS:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    move v1, v2

    goto :goto_5

    .line 410
    :cond_b
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_5

    :cond_c
    move v2, v1

    goto :goto_6

    :cond_d
    move v1, v3

    goto :goto_5

    :cond_e
    move v3, v2

    goto/16 :goto_2
.end method

.method private je()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 427
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 431
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 436
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 443
    :goto_1
    return-void

    .line 433
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method private jf()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 988
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 990
    :cond_0
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ga:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FZ:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FW:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FV:J

    .line 991
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FU:Z

    if-nez v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FF:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gb:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FG:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gb:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FK:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gb:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FE:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gb:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1048
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1052
    :cond_2
    return-void

    .line 1001
    :cond_3
    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->FU:Z

    .line 1002
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1003
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1004
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1005
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v4

    .line 1006
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v0, v4

    .line 1017
    :cond_4
    :goto_1
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FV:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_5

    .line 1018
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FV:J

    .line 1019
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FF:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->m(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    :cond_5
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FW:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    .line 1022
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FW:J

    .line 1023
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FG:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->m(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v0, v2

    .line 1026
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FZ:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_7

    .line 1027
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FZ:J

    .line 1028
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FK:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->m(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    :cond_7
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ga:J

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 1031
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ga:J

    .line 1032
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FE:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->m(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_8
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FC:Z

    if-nez v2, :cond_c

    .line 1036
    :cond_9
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1041
    :goto_2
    cmp-long v0, v0, v10

    if-gtz v0, :cond_d

    .line 1042
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1008
    :cond_a
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FX:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    .line 1009
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FX:J

    .line 1010
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FH:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->m(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    :cond_b
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FY:J

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 1013
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FY:J

    .line 1014
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FI:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->m(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1038
    :cond_c
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1039
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1044
    :cond_d
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1045
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private jg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1072
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fw:Z

    if-nez v0, :cond_0

    .line 1073
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jd()V

    .line 1074
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->ja()V

    .line 1075
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jb()V

    .line 1076
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->je()V

    .line 1083
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    const v1, 0x7f090566

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1081
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fv:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private jh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1105
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1107
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1108
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FJ:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FJ:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1114
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FJ:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 1115
    if-nez v0, :cond_1

    .line 1117
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    .line 1122
    :goto_0
    return-void

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    const v1, 0x7f09054b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private ji()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1314
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->ac(Z)V

    .line 1330
    :goto_0
    return-void

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1320
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->ac(Z)V

    goto :goto_0

    .line 1322
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1324
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1326
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1327
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gd:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 696
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 699
    if-ltz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    .line 702
    :catch_0
    move-exception v0

    .line 707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ej:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public aa(Z)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jf()V

    .line 660
    :cond_0
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public iL()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->iC()Z

    .line 649
    return-void
.end method

.method public iM()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public iN()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 568
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 569
    if-ne p1, v4, :cond_1

    .line 570
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FT:Z

    if-eqz v0, :cond_0

    .line 571
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->FT:Z

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 576
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 577
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->iC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    invoke-direct {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->b(ZZ)V

    .line 588
    :cond_1
    return-void

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1447
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1448
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1450
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FA:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1451
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->FB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1453
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1455
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 1456
    if-nez p2, :cond_4

    .line 1457
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0

    .line 1459
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->ad(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1380
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1381
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1382
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fx:Z

    if-eqz v3, :cond_1

    .line 1383
    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1386
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1387
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0

    .line 1389
    :cond_2
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1393
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    .line 1394
    invoke-direct {p0, v2, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1396
    :cond_4
    invoke-direct {p0, v2, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1399
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fv:Landroid/widget/Button;

    if-ne p1, v3, :cond_6

    .line 1400
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto :goto_0

    .line 1401
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fy:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1402
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1404
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fp:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ai:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1409
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f100105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1411
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f100106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1412
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1413
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1414
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1415
    invoke-static {}, Lcom/android/settings/hl;->hr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1416
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1417
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1422
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto/16 :goto_0

    .line 1424
    :cond_9
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    if-ne p1, v3, :cond_b

    .line 1426
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FM:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_a

    .line 1427
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FM:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1429
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->FM:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1430
    :cond_b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    if-ne p1, v2, :cond_c

    .line 1431
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->e(II)V

    goto/16 :goto_0

    .line 1433
    :cond_c
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1434
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FR:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_d

    .line 1435
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->FR:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1437
    :cond_d
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    move v0, v1

    .line 1439
    :cond_e
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fw:Z

    .line 1440
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->jg()V

    .line 1441
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->FR:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    .line 451
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DU:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->i:Landroid/content/pm/PackageManager;

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 454
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fp:Landroid/hardware/usb/IUsbManager;

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->ai:Landroid/appwidget/AppWidgetManager;

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Landroid/app/admin/DevicePolicyManager;

    .line 458
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fq:Lcom/android/internal/telephony/ISms;

    .line 460
    new-instance v0, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->EQ:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->iB()Ljava/lang/String;

    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 468
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 531
    const v0, 0x7f090528

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 533
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroyView()V

    .line 635
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    .line 636
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f1002be

    const v5, 0x7f1002bd

    const/16 v4, 0x8

    .line 475
    const v0, 0x7f040068

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 477
    const v0, 0x7f100017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 478
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/hl;->a(Landroid/view/View;Z)V

    .line 480
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09055f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Gb:Ljava/lang/CharSequence;

    .line 484
    const v0, 0x7f1000f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FE:Landroid/widget/TextView;

    .line 485
    const v0, 0x7f1000f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FF:Landroid/widget/TextView;

    .line 486
    const v0, 0x7f1000fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FG:Landroid/widget/TextView;

    .line 487
    const v0, 0x7f1000f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FH:Landroid/widget/TextView;

    .line 488
    const v0, 0x7f1000fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FI:Landroid/widget/TextView;

    .line 490
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FH:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FI:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_0
    const v0, 0x7f1000f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 497
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    .line 498
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    const v3, 0x7f090521

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 499
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Ft:Landroid/widget/Button;

    .line 500
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 503
    const v0, 0x7f1000f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fu:Landroid/view/View;

    .line 504
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fu:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fu:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fv:Landroid/widget/Button;

    .line 506
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fu:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 509
    const v0, 0x7f1000ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 510
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FO:Landroid/widget/Button;

    .line 511
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FP:Landroid/widget/Button;

    .line 514
    const v0, 0x7f100103

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FK:Landroid/widget/TextView;

    .line 515
    const v0, 0x7f100104

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FL:Landroid/widget/Button;

    .line 517
    const v0, 0x7f100107

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fy:Landroid/widget/Button;

    .line 520
    const v0, 0x7f100108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fz:Landroid/view/View;

    .line 521
    const v0, 0x7f100109

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FA:Landroid/widget/CheckBox;

    .line 522
    const v0, 0x7f10010a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FB:Landroid/widget/CheckBox;

    .line 524
    const v0, 0x7f1000f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FQ:Landroid/widget/CompoundButton;

    .line 526
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 557
    if-ne v1, v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->a(Ljava/lang/String;ZZ)V

    .line 563
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 629
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 630
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 537
    .line 538
    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fx:Z

    if-eqz v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->Fr:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 617
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 619
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->FD:Z

    .line 620
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 621
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->iC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/InstalledAppDetails;->b(ZZ)V

    .line 624
    :cond_0
    return-void
.end method
