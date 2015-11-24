.class Lcom/android/settings_ext/g;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic q:Lcom/android/settings_ext/AccessControlSetApp;

.field final synthetic r:Ljava/util/ArrayList;

.field final synthetic s:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ext/AccessControlSetApp;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    iput-object p2, p0, Lcom/android/settings_ext/g;->r:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/settings_ext/g;->s:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/g;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-static {v1}, Lcom/android/settings_ext/AccessControlSetApp;->c(Lcom/android/settings_ext/AccessControlSetApp;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/g;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 185
    new-instance v3, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-direct {v3, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-static {v1}, Lcom/android/settings_ext/AccessControlSetApp;->a(Lcom/android/settings_ext/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 188
    if-nez v1, :cond_0

    .line 189
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 191
    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    iget-object v4, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-static {v4}, Lcom/android/settings_ext/AccessControlSetApp;->a(Lcom/android/settings_ext/AccessControlSetApp;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v6, 0x36ee80

    invoke-static {v1, v0, v4, v6, v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/android/settings_ext/g;->s:Z

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ext/g;->q:Lcom/android/settings_ext/AccessControlSetApp;

    invoke-virtual {v0}, Lcom/android/settings_ext/AccessControlSetApp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method
