.class Lcom/android/settings_ext/eh;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/16 v2, 0x69

    .line 270
    const-string v0, "change_password"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    check-cast p2, Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 273
    const-string v1, "facial"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const v0, 0x8000

    iget-object v1, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILcom/android/settings_ext/SettingsPreferenceFragment;)V

    .line 296
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_1
    const-string v1, "pattern"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    if-nez v0, :cond_2

    .line 278
    const/high16 v0, 0x10000

    iget-object v1, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILcom/android/settings_ext/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->b(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 282
    :cond_3
    const-string v1, "numerical"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 283
    if-nez v0, :cond_4

    .line 284
    const/high16 v0, 0x20000

    iget-object v1, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILcom/android/settings_ext/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->c(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V

    goto :goto_0

    .line 288
    :cond_5
    const-string v1, "mixed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    if-nez v0, :cond_6

    .line 290
    const/high16 v0, 0x40000

    iget-object v1, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->a(ILcom/android/settings_ext/SettingsPreferenceFragment;)V

    goto :goto_0

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/eh;->rf:Lcom/android/settings_ext/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings_ext/MiuiSecurityChooseUnlock;->d(Lcom/android/settings_ext/SettingsPreferenceFragment;I)V

    goto :goto_0
.end method
