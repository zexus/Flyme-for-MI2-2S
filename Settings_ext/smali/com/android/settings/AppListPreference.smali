.class public Lcom/android/settings/AppListPreference;
.super Landroid/preference/ListPreference;
.source "AppListPreference.java"


# instance fields
.field private bc:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 78
    array-length v0, p1

    new-array v5, v0, [Landroid/content/pm/ApplicationInfo;

    move v0, v1

    move v2, v1

    .line 79
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_0

    .line 81
    :try_start_0
    aget-object v6, p1, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    aput-object v6, v5, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 79
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    new-array v6, v2, [Ljava/lang/CharSequence;

    .line 90
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/AppListPreference;->bc:[Landroid/graphics/drawable/Drawable;

    .line 93
    array-length v7, v5

    move v2, v1

    move v0, v3

    :goto_2
    if-ge v2, v7, :cond_3

    aget-object v8, v5, v2

    .line 94
    if-eqz v8, :cond_2

    .line 95
    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v1

    .line 96
    iget-object v9, p0, Lcom/android/settings/AppListPreference;->bc:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v9, v1

    .line 97
    if-eqz p2, :cond_1

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v1

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 93
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 106
    if-eq v0, v3, :cond_4

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    .line 109
    :cond_4
    return-void

    .line 83
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 114
    new-instance v0, Lcom/android/settings/G;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000f

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AppListPreference;->bc:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/G;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 118
    return-void
.end method
