.class public Lcom/android/settings_ext/notification/AppNotificationSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

.field private adP:Landroid/preference/SwitchPreference;

.field private adQ:Landroid/preference/SwitchPreference;

.field private adR:Landroid/preference/SwitchPreference;

.field private adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ext/notification/AppNotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 7

    .prologue
    .line 214
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 216
    array-length v2, v1

    .line 217
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 218
    aget-object v3, v1, v0

    .line 219
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_1
    return-object v0

    .line 222
    :catch_0
    move-exception v3

    .line 223
    const-string v4, "AppNotificationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/AppNotificationSettings;)Lcom/android/settings_ext/notification/NotificationAppList$AppRow;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/notification/AppNotificationSettings;)Lcom/android/settings_ext/notification/NotificationAppList$Backend;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method private qt()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private qu()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private qv()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f090551

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 211
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    sget-boolean v0, Lcom/android/settings_ext/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated mCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "AppNotificationSettings"

    const-string v1, "onActivityCreated: ignoring duplicate call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->mCreated:Z

    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f100282

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    const v1, 0x7f100013

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 83
    iget-object v3, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v3, v3, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const v1, 0x7f100014

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    iget-object v3, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v3, v3, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f100015

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v3, v3, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    if-nez v3, :cond_3

    .line 90
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 93
    new-instance v3, Lcom/android/settings_ext/notification/AppNotificationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings_ext/notification/AppNotificationSettings;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 108
    sget-boolean v0, Lcom/android/settings_ext/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppNotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate getIntent()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    if-nez v1, :cond_2

    .line 110
    const-string v0, "AppNotificationSettings"

    const-string v1, "No intent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->qv()V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const-string v0, "app_uid"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 116
    const-string v0, "app_package"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    if-eq v2, v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    :cond_3
    const-string v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing extras: app_package was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "app_uid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->qv()V

    goto :goto_0

    .line 124
    :cond_4
    sget-boolean v0, Lcom/android/settings_ext/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "AppNotificationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load details for pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 126
    invoke-static {v4, v3, v2}, Lcom/android/settings_ext/notification/AppNotificationSettings;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 127
    if-nez v5, :cond_6

    .line 128
    const-string v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find package info: app_package was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "app_uid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->qv()V

    goto/16 :goto_0

    .line 134
    :cond_6
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 135
    const-string v0, "block"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adP:Landroid/preference/SwitchPreference;

    .line 136
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adQ:Landroid/preference/SwitchPreference;

    .line 137
    const-string v0, "sensitive"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adR:Landroid/preference/SwitchPreference;

    .line 139
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    .line 140
    invoke-direct {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->qt()Z

    move-result v6

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->qu()Z

    move-result v7

    .line 142
    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    if-nez v7, :cond_8

    .line 143
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adR:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    :cond_8
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    invoke-static {v4, v0, v6}, Lcom/android/settings_ext/notification/NotificationAppList;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ext/notification/NotificationAppList$Backend;)Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    .line 147
    const-string v0, "has_settings_intent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    const-string v0, "has_settings_intent"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    iget-object v6, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    const-string v0, "settings_intent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, v6, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    .line 159
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adP:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-boolean v1, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeQ:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adQ:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-boolean v1, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeR:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adR:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adR:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-boolean v1, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeS:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adP:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings_ext/notification/AppNotificationSettings$2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/settings_ext/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings_ext/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adQ:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings_ext/notification/AppNotificationSettings$3;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/settings_ext/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings_ext/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adR:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adR:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings_ext/notification/AppNotificationSettings$4;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/settings_ext/notification/AppNotificationSettings$4;-><init>(Lcom/android/settings_ext/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    :cond_b
    invoke-static {v4, v5}, Lcom/android/settings_ext/hl;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adP:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iget-object v0, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adQ:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    iget-object v1, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ext/notification/AppNotificationSettings;->adS:Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ext/notification/NotificationAppList;->a(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    goto :goto_1
.end method
