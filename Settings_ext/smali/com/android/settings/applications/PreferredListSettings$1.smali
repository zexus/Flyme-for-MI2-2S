.class Lcom/android/settings/applications/PreferredListSettings$1;
.super Ljava/lang/Object;
.source "PreferredListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic HM:Lcom/android/settings/applications/PreferredListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/PreferredListSettings;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/applications/PreferredListSettings$1;->HM:Lcom/android/settings/applications/PreferredListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/settings/applications/PreferredListSettings$1;->HM:Lcom/android/settings/applications/PreferredListSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredListSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move v1, v2

    .line 210
    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 211
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "preferred_app_package_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "preferred_app_intent_filter"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 214
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/applications/PreferredListSettings$1;->HM:Lcom/android/settings/applications/PreferredListSettings;

    invoke-static {v0}, Lcom/android/settings/applications/PreferredListSettings;->a(Lcom/android/settings/applications/PreferredListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 210
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_1
    const-string v0, "com.android.mms"

    iget-object v1, p0, Lcom/android/settings/applications/PreferredListSettings$1;->HM:Lcom/android/settings/applications/PreferredListSettings;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/PreferredListSettings$1;->HM:Lcom/android/settings/applications/PreferredListSettings;

    invoke-static {v0}, Lcom/android/settings/applications/PreferredListSettings;->b(Lcom/android/settings/applications/PreferredListSettings;)V

    .line 222
    return-void
.end method
