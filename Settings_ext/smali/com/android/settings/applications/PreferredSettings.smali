.class public Lcom/android/settings_ext/applications/PreferredSettings;
.super Lmiui/app/ListActivity;
.source "PreferredSettings.java"


# instance fields
.field private HN:Ljava/lang/String;

.field private HO:Landroid/content/pm/ResolveInfo;

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/PreferredSettings;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    .prologue
    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/pm/ResolveInfo;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 134
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 136
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 137
    new-array v8, v7, [Landroid/content/ComponentName;

    move v3, v4

    move v2, v4

    .line 139
    :goto_0
    if-ge v3, v7, :cond_0

    .line 140
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 141
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v3

    .line 143
    iget v9, v1, Landroid/content/pm/ResolveInfo;->match:I

    if-le v9, v2, :cond_4

    iget v1, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 139
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_2
    if-eqz p1, :cond_3

    .line 155
    new-instance v1, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 156
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 157
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 158
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2, v8, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 163
    :goto_3
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, p1}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->e(Landroid/content/pm/ResolveInfo;)V

    .line 165
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->notifyDataSetChanged()V

    .line 166
    return-void

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "android.intent.category.HOME"

    iget-object v3, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.no.such.packagename"

    const-string v7, "com.no.such.packagename.no.such.class"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2, v8, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 151
    const-string v1, "com.no.such.packagename"

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 51
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    .line 52
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    :goto_0
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lmiui/R$dimen;->preference_screen_padding_bottom:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 58
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_intent_filter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HN:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HN:Ljava/lang/String;

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 85
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 88
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 89
    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_2

    .line 90
    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HO:Landroid/content/pm/ResolveInfo;

    :cond_2
    move v3, v2

    move v2, v1

    .line 92
    :goto_1
    if-ge v3, v2, :cond_8

    .line 93
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 94
    iget v6, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_3

    iget-boolean v6, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_5

    .line 96
    :cond_3
    :goto_2
    if-ge v3, v2, :cond_5

    .line 97
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 54
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 101
    :cond_5
    iget-boolean v6, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v6, :cond_6

    .line 102
    iget-object v6, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HO:Landroid/content/pm/ResolveInfo;

    if-nez v6, :cond_7

    .line 103
    iput-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HO:Landroid/content/pm/ResolveInfo;

    .line 92
    :cond_6
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 106
    :cond_7
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 107
    if-nez v6, :cond_6

    .line 108
    iput-object v1, p0, Lcom/android/settings_ext/applications/PreferredSettings;->HO:Landroid/content/pm/ResolveInfo;

    goto :goto_3

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;

    invoke-direct {v1, p0, p0, v5, v0}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;-><init>(Lcom/android/settings_ext/applications/PreferredSettings;Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/PreferredSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 121
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/PreferredSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;

    .line 124
    invoke-virtual {v0, p3}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->aF(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/PreferredSettings$ResolveListAdapter;->jv()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings_ext/applications/PreferredSettings;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ext/applications/PreferredSettings;->d(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0
.end method
