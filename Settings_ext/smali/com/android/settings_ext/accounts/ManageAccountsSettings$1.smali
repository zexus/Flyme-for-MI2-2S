.class Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 516
    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    iget-object v2, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v1, v2, v0}, Lcom/android/settings_ext/accounts/ManageAccountsSettings;->a(Lcom/android/settings_ext/accounts/ManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Lcom/android/settings_ext/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/accounts/ManageAccountsSettings$1;->Cn:Lcom/android/settings_ext/accounts/ManageAccountsSettings;

    iget-object v2, v2, Lcom/android/settings_ext/accounts/ManageAccountsSettings;->zA:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 532
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method