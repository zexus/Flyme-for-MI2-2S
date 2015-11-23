.class public Lcom/android/settings/Autostar/AutoMangement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoMangement.java"


# instance fields
.field bA:Landroid/view/View$OnClickListener;

.field bB:Landroid/view/View$OnClickListener;

.field bt:Landroid/preference/PreferenceGroup;

.field bu:Ljava/util/ArrayList;

.field private bv:Ljava/util/List;

.field bw:Landroid/app/Fragment;

.field bx:Landroid/widget/TextView;

.field by:Landroid/widget/TextView;

.field bz:Landroid/widget/FrameLayout;

.field i:Landroid/content/pm/PackageManager;

.field mActivity:Landroid/app/Activity;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/Autostar/a;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/a;-><init>(Lcom/android/settings/Autostar/AutoMangement;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bA:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/android/settings/Autostar/b;

    invoke-direct {v0, p0}, Lcom/android/settings/Autostar/b;-><init>(Lcom/android/settings/Autostar/AutoMangement;)V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bB:Landroid/view/View$OnClickListener;

    .line 52
    return-void
.end method

.method private P()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 111
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

    .line 112
    invoke-static {v0}, Lcom/android/settings/Autostar/AutoMangement;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/Autostar/AutoMangement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/Autostar/AutoMangement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    return-object v0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method Q()V
    .locals 8

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 132
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bt:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/Autostar/AutoMangement;->P()V

    .line 136
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    invoke-static {v0, v6, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 141
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 142
    new-instance v0, Lcom/android/settings/Autostar/c;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/Autostar/c;-><init>(Lcom/android/settings/Autostar/AutoMangement;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/AutoMangement;Landroid/content/pm/ApplicationInfo;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bt:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 149
    :cond_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 91
    const v0, 0x7f040014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->by:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bx:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    const v2, 0x7f100031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bz:Landroid/widget/FrameLayout;

    .line 96
    iget-object v1, p0, Lcom/android/settings/Autostar/AutoMangement;->bB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->Q()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/AutoMangement;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->i:Landroid/content/pm/PackageManager;

    .line 156
    iput-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->bw:Landroid/app/Fragment;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->mActivity:Landroid/app/Activity;

    .line 158
    const-string v0, "autorun"

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/AutoMangement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bt:Landroid/preference/PreferenceGroup;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bu:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->Q()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bt:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090c5f

    invoke-virtual {p0, v1}, Lcom/android/settings/Autostar/AutoMangement;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 168
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/Autostar/AutoMangement;->Q()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bx:Landroid/widget/TextView;

    const v1, 0x7f090c5f

    invoke-virtual {p0, v1}, Lcom/android/settings/Autostar/AutoMangement;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bz:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->by:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->bz:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement;->by:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
