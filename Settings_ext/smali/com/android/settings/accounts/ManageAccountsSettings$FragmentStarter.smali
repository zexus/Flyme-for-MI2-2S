.class Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

.field private final Co:I

.field private final mClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/accounts/ManageAccountsSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    .line 444
    iput p3, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->Co:I

    .line 445
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->Co:I

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ext/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 458
    iget-object v0, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    const-class v1, Lcom/android/settings_ext/location/MiuiLocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$FragmentStarter;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/android/settings_ext/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 463
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
