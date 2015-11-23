.class public Lcom/android/settings/Autostar/d;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Autoallow.java"


# instance fields
.field bE:Landroid/view/View$OnClickListener;

.field bt:Landroid/preference/PreferenceGroup;

.field bu:Ljava/util/ArrayList;

.field private bv:Ljava/util/List;

.field by:Landroid/widget/TextView;

.field i:Landroid/content/pm/PackageManager;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/Autostar/e;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/e;-><init>(Lcom/android/settings/Autostar/d;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->bE:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method private P()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->bv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 71
    invoke-static {v0}, Lcom/android/settings/Autostar/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Autostar/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/settings/Autostar/d;->bv:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/Autostar/d;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/Autostar/d;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method Q()V
    .locals 8

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/Autostar/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 91
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->bt:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->bu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/Autostar/d;->P()V

    .line 95
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->bv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->bv:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Autostar/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Autostar/d;->i:Landroid/content/pm/PackageManager;

    invoke-static {v0, v6, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 101
    new-instance v0, Lcom/android/settings/Autostar/f;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/Autostar/f;-><init>(Lcom/android/settings/Autostar/d;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/d;Landroid/content/pm/ApplicationInfo;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/Autostar/d;->bu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/android/settings/Autostar/d;->bt:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 107
    :cond_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    const v0, 0x7f040013

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->mView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->by:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/android/settings/Autostar/d;->by:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/Autostar/d;->bv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/Autostar/d;->mView:Landroid/view/View;

    return-object v0

    .line 62
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/d;->addPreferencesFromResource(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/Autostar/d;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->i:Landroid/content/pm/PackageManager;

    .line 114
    const-string v0, "autorun"

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/d;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->bt:Landroid/preference/PreferenceGroup;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->bv:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Autostar/d;->bu:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/Autostar/d;->Q()V

    .line 118
    return-void
.end method
