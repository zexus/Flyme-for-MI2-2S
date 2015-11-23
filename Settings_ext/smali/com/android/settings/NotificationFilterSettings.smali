.class public Lcom/android/settings/NotificationFilterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationFilterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field private tq:Landroid/preference/CheckBoxPreference;

.field private tr:Landroid/preference/CheckBoxPreference;

.field private tt:Landroid/preference/CheckBoxPreference;

.field private tu:Landroid/preference/CheckBoxPreference;

.field private tv:Landroid/preference/CheckBoxPreference;

.field private tw:Landroid/preference/CheckBoxPreference;

.field private tx:Landroid/preference/CheckBoxPreference;

.field private ty:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private ad()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 117
    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->tt:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_keyguard"

    invoke-static {v0, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->tv:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_message"

    invoke-static {v0, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_sound"

    invoke-static {v0, v2, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_vibrate"

    invoke-static {v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 155
    if-eq v0, v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "_vibrate"

    invoke-static {v2, v3, v4, v0}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->tw:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tx:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_led"

    invoke-static {v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/NotificationFilterSettings;->ty:Z

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-static {v1, v2}, Lcom/android/settings/aq;->a(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tt:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tv:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tx:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 173
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 142
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 147
    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 158
    goto/16 :goto_3

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    const-string v0, "appName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string v0, "appName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    .line 59
    :cond_0
    const/4 v4, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :try_start_1
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_2

    .line 67
    :cond_1
    const-string v4, "NotificationFilterSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packagename ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->finish()V

    .line 71
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-le v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/NotificationFilterSettings;->ty:Z

    .line 73
    const-string v2, "needInit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lmiui/util/NotificationFilterHelper;->initUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    :cond_3
    const v1, 0x7f060087

    invoke-virtual {p0, v1}, Lcom/android/settings/NotificationFilterSettings;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    const-string v0, "enable_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tq:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tr:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/NotificationFilterSettings;->ty:Z

    if-nez v0, :cond_5

    .line 86
    const-string v0, "main_container"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/NotificationFilterSettings;->tr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :goto_2
    const-string v0, "show_floating_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v0, "show_keyguard_notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tt:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v0, "show_home_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tv:Landroid/preference/CheckBoxPreference;

    .line 99
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    const-string v0, "enable_notification_sound_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tw:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v0, "enable_notification_led"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tx:Landroid/preference/CheckBoxPreference;

    .line 105
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    return-void

    .line 63
    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v4

    move-object v4, v7

    .line 64
    :goto_3
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 71
    goto/16 :goto_1

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/android/settings/NotificationFilterSettings;->tr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 63
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 178
    check-cast p2, Ljava/lang/Boolean;

    .line 179
    const-string v1, "show_floating_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 202
    :cond_0
    :goto_0
    const-string v1, "enable_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "show_home_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    const-string v3, "enable_notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const-string v0, "app_packageName"

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/NotificationFilterSettings;->ad()V

    .line 210
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_3
    const-string v1, "show_keyguard_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_keyguard"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_4
    const-string v1, "enable_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 188
    :cond_5
    const-string v1, "priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/NotificationFilterSettings;->mUid:I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/aq;->a(Landroid/content/Context;Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 191
    :cond_6
    const-string v1, "show_home_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_message"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 194
    :cond_7
    const-string v1, "enable_notification_sound_vibrate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_sound"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_vibrate"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 198
    :cond_8
    const-string v1, "enable_notification_led"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/NotificationFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationFilterSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "_led"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/settings/NotificationFilterSettings;->ad()V

    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    return-void
.end method
