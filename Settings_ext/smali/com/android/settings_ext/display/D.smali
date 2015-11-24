.class Lcom/android/settings_ext/display/D;
.super Landroid/preference/CheckBoxPreference;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ext/display/D;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    .line 125
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {p1}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->b(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/D;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {p1}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->b(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/D;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/D;->setKey(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/display/D;->setPersistent(Z)V

    .line 130
    invoke-virtual {p0, p4}, Lcom/android/settings_ext/display/D;->setChecked(Z)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/display/D;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    return-void
.end method
