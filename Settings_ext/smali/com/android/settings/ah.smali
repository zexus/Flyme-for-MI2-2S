.class Lcom/android/settings/ah;
.super Ljava/lang/Object;
.source "ChildrenModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cB:Lcom/android/settings/ChildrenModeSettings;

.field final synthetic cF:Landroid/content/pm/ApplicationInfo;

.field final synthetic cG:Z


# direct methods
.method constructor <init>(Lcom/android/settings/ChildrenModeSettings;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    iput-object p2, p0, Lcom/android/settings/ah;->cF:Landroid/content/pm/ApplicationInfo;

    iput-boolean p3, p0, Lcom/android/settings/ah;->cG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/ah;->cF:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-static {v2}, Lcom/android/settings/ChildrenModeSettings;->a(Lcom/android/settings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/ah;->cF:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 179
    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ah;->cF:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-static {v3}, Lcom/android/settings/ChildrenModeSettings;->a(Lcom/android/settings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    invoke-static {v0, v2, v3, v4, v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ah;->cF:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 188
    iget-boolean v0, p0, Lcom/android/settings/ah;->cG:Z

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/ah;->cB:Lcom/android/settings/ChildrenModeSettings;

    invoke-static {v0}, Lcom/android/settings/ChildrenModeSettings;->c(Lcom/android/settings/ChildrenModeSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
