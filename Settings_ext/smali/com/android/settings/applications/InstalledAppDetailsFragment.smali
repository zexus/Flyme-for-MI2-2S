.class public Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;


# instance fields
.field private CP:Landroid/content/pm/PackageInfo;

.field private DU:Lcom/android/settings_ext/applications/ApplicationsState;

.field private DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

.field private EQ:Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

.field private Ej:Ljava/lang/CharSequence;

.field private FC:Z

.field private FU:Z

.field private FV:J

.field private FW:J

.field private FX:J

.field private FY:J

.field private FZ:J

.field private Fp:Landroid/hardware/usb/IUsbManager;

.field private Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

.field private Fw:Z

.field private Fx:Z

.field private GA:Z

.field private GB:Z

.field private GC:I

.field private GD:I

.field private Ga:J

.field private Gb:Ljava/lang/CharSequence;

.field private Gc:Ljava/util/HashSet;

.field private final Gd:Landroid/content/BroadcastReceiver;

.field private Gh:Lcom/android/settings_ext/applications/AppInfoPreference;

.field private Gi:Lmiui/preference/ValuePreference;

.field private Gj:Lmiui/preference/ValuePreference;

.field private Gk:Lmiui/preference/ValuePreference;

.field private Gl:Lmiui/preference/ValuePreference;

.field private Gm:Lmiui/preference/ValuePreference;

.field private Gn:Lmiui/preference/ValuePreference;

.field private Go:Lmiui/preference/ButtonPreference;

.field private Gp:Lmiui/preference/ButtonPreference;

.field private Gq:Lmiui/preference/ValuePreference;

.field private Gr:Landroid/preference/CheckBoxPreference;

.field private Gs:Landroid/preference/Preference;

.field private Gt:Landroid/preference/Preference;

.field private Gu:Landroid/preference/Preference;

.field private Gv:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

.field private Gw:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearCacheObserver;

.field private Gx:Z

.field private Gy:Landroid/view/MenuItem;

.field private Gz:Landroid/view/MenuItem;

.field private ai:Landroid/appwidget/AppWidgetManager;

.field private hC:Landroid/app/admin/DevicePolicyManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 128
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fw:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fx:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FC:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gx:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GA:Z

    .line 139
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GB:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FU:Z

    .line 144
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FV:J

    .line 145
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FW:J

    .line 146
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FX:J

    .line 147
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FY:J

    .line 148
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FZ:J

    .line 149
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Ga:J

    .line 182
    new-instance v0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 1047
    new-instance v0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$2;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gd:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->aA(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gs:Landroid/preference/Preference;

    const v1, 0x7f090530

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 544
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gs:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ai(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;ZZ)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gx:Z

    return p1
.end method

.method private aA(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 918
    packed-switch p1, :pswitch_data_0

    .line 932
    const-string v0, ""

    :goto_0
    return-object v0

    .line 920
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090567

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 922
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090568

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 924
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090569

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 926
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09056a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 928
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09056b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 930
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 918
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
    .line 1055
    iput-boolean p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GA:Z

    .line 1056
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gy:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gy:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GA:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1059
    :cond_0
    return-void
.end method

.method private ae(Z)V
    .locals 5

    .prologue
    .line 936
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 938
    return-void

    .line 936
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private af(Z)V
    .locals 2

    .prologue
    .line 1137
    if-eqz p1, :cond_0

    const-string v0, "com.jeejen.family.miui"

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    const/4 p1, 0x0

    .line 1142
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GB:Z

    .line 1144
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1146
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1147
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GD:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1149
    :cond_1
    return-void
.end method

.method private ai(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 528
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

    .line 529
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 531
    invoke-direct {p0, v3, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(ZZ)V

    .line 532
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Lcom/android/settings_ext/applications/ApplicationsState;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    .line 417
    const/4 v0, 0x0

    .line 418
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f090562

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gh:Lcom/android/settings_ext/applications/AppInfoPreference;

    new-instance v3, Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/applications/AppInfoPreference;->a(Lcom/android/settings_ext/applications/AppInfoPreference$AppInfo;)V

    .line 424
    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private b(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 446
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 447
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 448
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    const v3, 0x7f09052c

    invoke-virtual {v2, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 449
    if-ne v0, v4, :cond_1

    .line 450
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

    .line 451
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsState;->ae(Ljava/lang/String;)V

    .line 455
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ji()V

    .line 457
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ae(Z)V

    return-void
.end method

.method private b(ZZ)V
    .locals 3

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 537
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, p0, v2, v0}, Lcom/android/settings_ext/eK;->a(Landroid/app/Activity;Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 539
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 427
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 428
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 430
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fw:Z

    .line 431
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 432
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

    .line 434
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsState;->ae(Ljava/lang/String;)V

    .line 438
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->iC()Z

    .line 439
    return-void

    .line 436
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ac(Z)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private e(II)V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-static {p1, p2}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->g(II)Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

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

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jh()V

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 908
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->ah(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/applications/ApplicationsState;->ad(Ljava/lang/String;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_0

    .line 912
    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ji()V

    .line 915
    return-void
.end method

.method static synthetic g(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Lmiui/preference/ButtonPreference;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    return-object v0
.end method

.method private iC()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fw:Z

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return v3

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    :goto_1
    if-nez v1, :cond_e

    .line 329
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 331
    :goto_2
    if-eqz v0, :cond_e

    .line 332
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/applications/ApplicationsState;->ad(Ljava/lang/String;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 337
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_3

    move v3, v2

    .line 338
    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 327
    goto :goto_1

    .line 329
    :cond_2
    const-string v5, "intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_2

    .line 343
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 357
    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v1, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 362
    :try_start_1
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fp:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 366
    :goto_4
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ai:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v5

    .line 369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v1, v3

    .line 370
    :goto_5
    if-nez v1, :cond_6

    if-nez v5, :cond_6

    .line 371
    invoke-direct {p0, v4, v4}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 406
    :goto_6
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ji()V

    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(Landroid/content/pm/PackageInfo;)V

    .line 408
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jg()V

    .line 409
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jf()V

    .line 410
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jk()V

    goto/16 :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const-string v1, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 349
    goto/16 :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 364
    const-string v5, "InstalledAppDetails"

    const-string v6, "mUsbManager.hasDefaults"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    .line 369
    goto :goto_5

    .line 373
    :cond_6
    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    move v0, v3

    .line 376
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 378
    if-eqz v1, :cond_d

    .line 379
    const v1, 0x7f09052e

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 380
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 381
    if-eqz v0, :cond_7

    .line 382
    new-instance v8, Landroid/text/style/BulletSpan;

    invoke-direct {v8, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v7, v8, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 384
    :cond_7
    if-nez v4, :cond_a

    new-array v1, v9, [Ljava/lang/CharSequence;

    aput-object v7, v1, v2

    const-string v4, "\n"

    aput-object v4, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 387
    :goto_8
    if-eqz v5, :cond_c

    .line 388
    const v4, 0x7f09052f

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 390
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    if-eqz v0, :cond_8

    .line 392
    new-instance v0, Landroid/text/style/BulletSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v5, v0, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 395
    :cond_8
    if-nez v1, :cond_b

    new-array v0, v9, [Ljava/lang/CharSequence;

    aput-object v5, v0, v2

    const-string v1, "\n"

    aput-object v1, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    :goto_9
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gs:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gs:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gs:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 373
    goto :goto_7

    .line 384
    :cond_a
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v4, v1, v2

    const-string v4, "\n"

    aput-object v4, v1, v3

    aput-object v7, v1, v9

    const-string v4, "\n"

    aput-object v4, v1, v10

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_8

    .line 395
    :cond_b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    const-string v1, "\n"

    aput-object v1, v0, v3

    aput-object v5, v0, v9

    const-string v1, "\n"

    aput-object v1, v0, v10

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_9

    :cond_c
    move-object v0, v1

    goto :goto_9

    :cond_d
    move-object v1, v4

    goto :goto_8

    :cond_e
    move-object v0, v1

    goto/16 :goto_3
.end method

.method private ja()V
    .locals 4

    .prologue
    const v3, 0x7f09052c

    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 608
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 609
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FC:Z

    .line 618
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    const v1, 0x7f09053e

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 616
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ButtonPreference;->setText(I)V

    goto :goto_1
.end method

.method private jc()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 622
    const-string v1, "com.android.documentsui"

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gc:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private jd()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1085
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fx:Z

    .line 1088
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fx:Z

    if-eqz v0, :cond_1

    .line 1090
    const v0, 0x7f09052d

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I

    .line 1128
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1132
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->af(Z)V

    .line 1133
    return-void

    :cond_0
    move v0, v2

    .line 1085
    goto :goto_0

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1101
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1105
    const v3, 0x7f02001f

    iput v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GD:I

    .line 1106
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1108
    :cond_3
    const v0, 0x7f09052a

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I

    move v1, v2

    goto :goto_1

    .line 1109
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    .line 1110
    const v0, 0x7f09052a

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1118
    goto :goto_1

    .line 1113
    :cond_5
    const v0, 0x7f09052b

    :try_start_1
    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1121
    :cond_6
    sget v0, Lmiui/R$drawable;->action_button_delete_light:I

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GD:I

    .line 1122
    const v0, 0x7f090527

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method private je()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gq:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ext/NotificationAppListSettings;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gq:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gq:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/util/NotificationFilterHelper;->initUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private jf()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 636
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 638
    :cond_0
    iput-wide v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Ga:J

    iput-wide v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FZ:J

    iput-wide v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FW:J

    iput-wide v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FV:J

    .line 639
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FU:Z

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gj:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gl:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gn:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gi:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gb:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gp:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 695
    :goto_0
    return-void

    .line 649
    :cond_2
    iput-boolean v7, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FU:Z

    .line 650
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 651
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 652
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 653
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v4

    .line 654
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v0, v4

    .line 656
    :cond_3
    iget-wide v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FV:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_4

    .line 657
    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FV:J

    .line 658
    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gj:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->m(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 660
    :cond_4
    iget-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FW:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 661
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FW:J

    .line 662
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gl:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->m(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 664
    :cond_5
    iget-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FX:J

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 665
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FX:J

    .line 666
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gk:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->m(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 669
    :cond_6
    iget-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FY:J

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 670
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FY:J

    .line 671
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gm:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->m(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 673
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v0, v2

    .line 674
    iget-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FZ:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 675
    iput-wide v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FZ:J

    .line 676
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gn:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->m(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 678
    :cond_8
    iget-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Ga:J

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 679
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Ga:J

    .line 680
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gi:Lmiui/preference/ValuePreference;

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v4, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->m(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 683
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->FC:Z

    if-nez v2, :cond_b

    .line 684
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v2, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 688
    :goto_1
    cmp-long v0, v0, v8

    if-gtz v0, :cond_c

    .line 689
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gp:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 686
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v2, v7}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    goto :goto_1

    .line 691
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gp:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v7}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gp:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method private jg()V
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fw:Z

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jd()V

    .line 550
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ja()V

    .line 551
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->je()V

    .line 552
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jl()V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->af(Z)V

    goto :goto_0
.end method

.method private jh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    invoke-virtual {v0, v4}, Lmiui/preference/ButtonPreference;->setEnabled(Z)V

    .line 886
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 887
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

    .line 888
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gv:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearUserDataObserver;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gv:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 893
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gv:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 894
    if-nez v0, :cond_1

    .line 896
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

    .line 897
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    .line 903
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    const v1, 0x7f09054b

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 900
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x32

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method private ji()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1062
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui"

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ac(Z)V

    .line 1082
    :cond_1
    :goto_0
    return-void

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 1070
    invoke-direct {p0, v6}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ac(Z)V

    goto :goto_0

    .line 1072
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1074
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gd:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private jk()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gu:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->CP:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private jl()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 582
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 586
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    .line 588
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 589
    iget-boolean v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gx:Z

    if-eqz v2, :cond_3

    .line 590
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 592
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 598
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gx:Z

    goto :goto_0

    .line 595
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gx:Z

    if-eqz v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private m(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Ej:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public aa(Z)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->jf()V

    .line 496
    :cond_0
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public iL()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->iC()Z

    .line 481
    return-void
.end method

.method public iM()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public iN()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    const v0, 0x7f090527

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I

    .line 241
    const v0, 0x7f02001f

    iput v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GD:I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09055f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gb:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v0, Ljava/util/HashSet;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gc:Ljava/util/HashSet;

    .line 247
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 248
    iget-object v5, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gc:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settings_ext/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ext/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 255
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fp:Landroid/hardware/usb/IUsbManager;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ai:Landroid/appwidget/AppWidgetManager;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->hC:Landroid/app/admin/DevicePolicyManager;

    .line 260
    new-instance v0, Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->EQ:Lcom/android/settings_ext/applications/CanBeOnSdCardChecker;

    .line 262
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->addPreferencesFromResource(I)V

    .line 264
    const-string v0, "applications_info"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/AppInfoPreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gh:Lcom/android/settings_ext/applications/AppInfoPreference;

    .line 265
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gh:Lcom/android/settings_ext/applications/AppInfoPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/AppInfoPreference;->setSelectable(Z)V

    .line 266
    const-string v0, "total_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gi:Lmiui/preference/ValuePreference;

    .line 267
    const-string v0, "application_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gj:Lmiui/preference/ValuePreference;

    .line 268
    const-string v0, "external_code_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gk:Lmiui/preference/ValuePreference;

    .line 269
    const-string v0, "data_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gl:Lmiui/preference/ValuePreference;

    .line 270
    const-string v0, "external_data_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gm:Lmiui/preference/ValuePreference;

    .line 271
    const-string v0, "cache_size"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gn:Lmiui/preference/ValuePreference;

    .line 272
    const-string v0, "clear_data"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Go:Lmiui/preference/ButtonPreference;

    .line 273
    const-string v0, "clear_cache"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ButtonPreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gp:Lmiui/preference/ButtonPreference;

    .line 274
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gp:Lmiui/preference/ButtonPreference;

    const v1, 0x7f09051e

    invoke-virtual {v0, v1}, Lmiui/preference/ButtonPreference;->setText(I)V

    .line 275
    const-string v0, "notification_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gq:Lmiui/preference/ValuePreference;

    .line 276
    const-string v0, "floating_window_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    .line 277
    const-string v0, "clear_default_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gs:Landroid/preference/Preference;

    .line 278
    const-string v0, "permission_detail_info"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gt:Landroid/preference/Preference;

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gt:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    const-string v0, "permission_manage"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gu:Landroid/preference/Preference;

    .line 282
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 283
    const-string v0, "permissions_label"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 284
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gu:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    iput-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gu:Landroid/preference/Preference;

    .line 292
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->setHasOptionsMenu(Z)V

    .line 293
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gu:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    iput-object v6, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gr:Landroid/preference/CheckBoxPreference;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1006
    const v0, 0x7f090c59

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gy:Landroid/view/MenuItem;

    .line 1007
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gy:Landroid/view/MenuItem;

    sget v1, Lmiui/R$drawable;->action_button_discard_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1008
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gy:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GA:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1009
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gy:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1011
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GC:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    .line 1012
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GD:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1013
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->GB:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1014
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gz:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1015
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDetach()V

    .line 319
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->release()V

    .line 320
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1020
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1044
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1022
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1026
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fx:Z

    if-eqz v0, :cond_0

    .line 1027
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    .line 1031
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 1033
    :cond_1
    new-instance v1, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ai(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPause()V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->pause()V

    .line 314
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 942
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 943
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 945
    const-string v2, "notification_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 946
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 947
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v2, "com.android.settings"

    const-string v4, "com.android.settings.Settings$NotificationFilterActivity"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    const-string v2, "appName"

    iget-object v4, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    const-string v1, ":miui:starting_window_label"

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1001
    :cond_0
    :goto_0
    return v3

    .line 953
    :cond_1
    const-string v2, "floating_window_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    const/16 v0, 0x9

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 955
    :cond_2
    const-string v2, "clear_data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 956
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 957
    invoke-static {}, Lcom/android/settings_ext/hl;->hr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 964
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->e(II)V

    goto :goto_0

    .line 966
    :cond_4
    const-string v2, "clear_cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 967
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gw:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    if-nez v0, :cond_5

    .line 968
    new-instance v0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearCacheObserver;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gw:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    .line 970
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gw:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 971
    :cond_6
    const-string v2, "clear_default_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 972
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fp:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->ai:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 979
    invoke-direct {p0, v5, v5}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    const-string v2, "InstalledAppDetails"

    const-string v4, "mUsbManager.clearDefaults"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 980
    :cond_7
    const-string v2, "permission_detail_info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 981
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_8

    .line 982
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 983
    const-string v0, "extra_package_application"

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 984
    const-class v0, Lcom/android/settings_ext/applications/PermissionInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 986
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/applications/PermissionInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 987
    const-string v1, "extra_package_application"

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 990
    :cond_9
    const-string v2, "permission_manage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 993
    const-string v2, "miui.intent.action.APP_PERM_EDITOR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 996
    :catch_1
    move-exception v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 297
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 299
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->resume()V

    .line 300
    invoke-direct {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->iC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0, v6, v6}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(ZZ)V

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Fr:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/PermissionInfoFragment;->a(ILandroid/content/Context;)Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->Gt:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090c31

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->js()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->jr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->jt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
