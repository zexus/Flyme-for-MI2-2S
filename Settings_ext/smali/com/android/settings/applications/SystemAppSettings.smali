.class public Lcom/android/settings_ext/applications/SystemAppSettings;
.super Lcom/android/settings_ext/BaseListFragment;
.source "SystemAppSettings.java"


# static fields
.field private static Lv:Ljava/util/HashMap;


# instance fields
.field private Lw:Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;

.field private Lx:Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lv:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ext/BaseListFragment;-><init>()V

    .line 221
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/SystemAppSettings;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lv:Ljava/util/HashMap;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 123
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 124
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 126
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lv:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/android/settings_ext/applications/SystemAppSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method private c(Ljava/util/List;I)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 73
    const/4 v0, -0x1

    .line 74
    const/16 v2, 0x3e8

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v4, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/payment/PaymentManager;->isMibiServiceDisabled()Z

    move-result v4

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 78
    iget-boolean v6, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v6, :cond_0

    .line 82
    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v1, v2, :cond_1

    .line 83
    if-nez v4, :cond_1

    .line 84
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 85
    const v6, 0x7f090c86

    invoke-virtual {p0, v6}, Lcom/android/settings_ext/applications/SystemAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 86
    const v6, 0x7f020108

    iput v6, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 87
    const-wide/32 v6, 0x7f100376

    iput-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 88
    new-instance v6, Landroid/content/Intent;

    const-string v7, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 89
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 97
    const-string v7, "system_app"

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 98
    iput-object v1, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 99
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lcom/android/settings_ext/applications/SystemAppSettings;->Lv:Ljava/util/HashMap;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    sget-object v1, Lcom/android/settings_ext/applications/SystemAppSettings;->Lv:Ljava/util/HashMap;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move v1, v0

    .line 106
    goto :goto_0

    .line 109
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 110
    add-int/lit8 v1, p2, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    add-int/lit8 v0, v0, -0x1

    move p2, v1

    goto :goto_1

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lw:Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;

    if-nez v0, :cond_5

    .line 114
    new-instance v0, Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;-><init>(Lcom/android/settings_ext/applications/SystemAppSettings;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lw:Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lw:Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/SystemAppSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    :cond_5
    return p2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/SystemAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/applications/SystemAppSettings;->c(Ljava/util/List;I)I

    .line 54
    new-instance v1, Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lx:Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;

    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lx:Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/SystemAppSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Lcom/android/settings_ext/BaseListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 61
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->Lx:Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/applications/SystemAppSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 62
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f100376

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lmiui/payment/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 65
    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/SystemAppSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
