.class public Lcom/android/settings/applications/PreferredSmsSettings;
.super Lmiui/app/ListActivity;
.source "PreferredSmsSettings.java"


# instance fields
.field private HN:Ljava/lang/String;

.field private HT:Ljava/lang/String;

.field private HU:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/PreferredSmsSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/PreferredSmsSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/applications/PreferredSmsSettings;->al(Ljava/lang/String;)V

    return-void
.end method

.method private ak(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private al(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSmsSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;

    .line 126
    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSmsSettings;->finish()V

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PreferredSmsSettings;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HN:Ljava/lang/String;

    .line 63
    const-string v0, "com.android.mms"

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PreferredSmsSettings;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HU:Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 69
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_1
    new-instance v0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;-><init>(Lcom/android/settings/applications/PreferredSmsSettings;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PreferredSmsSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSmsSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;

    .line 90
    invoke-virtual {v0, p3}, Lcom/android/settings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->aG(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HT:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_1
    if-eqz v0, :cond_0

    .line 104
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 105
    const v0, 0x7f090af7

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HU:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/PreferredSmsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const v3, 0x7f090af9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HU:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HU:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/PreferredSmsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    const v4, 0x7f090afb

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/PreferredSmsSettings;->HU:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/PreferredSmsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 108
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f090afa

    new-instance v5, Lcom/android/settings/applications/PreferredSmsSettings$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/applications/PreferredSmsSettings$1;-><init>(Lcom/android/settings/applications/PreferredSmsSettings;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PreferredSmsSettings;->al(Ljava/lang/String;)V

    goto :goto_0
.end method
